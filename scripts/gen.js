const fs = require("fs/promises");
const path = require("path");

const sep = "_"

const mkTypeName = (item, signature) => {
  const subtype = item.subtype ? `${sep}${item.subtype}` : "";
  return `${item.type}${subtype}${signature.name ? `${sep}${signature.name}` : ""}`;
};

const mkCmdName = (item, signature) => {
  return `Cmd${sep}${mkTypeName(item, signature)}`;
};

const genArg = (item, signature, arg) => {
  const fieldName = arg.label;
  if (signature.required && signature.required.includes(arg.code)) {
    return `${fieldName} :: f ${arg.type}`;
  } else if (signature.optional && signature.optional.includes(arg.code)) {
    return `${fieldName} :: Maybe ${arg.type}`;
  }
  return null;
};

const genMkArgCall = (item, signature, arg) => {
  const fieldName = arg.label;
  if (signature.optional && signature.optional.includes(arg.code)) {
    return `mkArg '${arg.code}' r.${fieldName}`;
  } else if (signature.required && signature.required.includes(arg.code)) {
    return `mkReqArg '${arg.code}' r.${fieldName}`;
  }
  return null;
};

const genSignature = (item, signature) => {
  const typeName = mkTypeName(item, signature);
  const args = item.args || [];
  const reqArgCalls = args
    .filter(arg => signature.required && signature.required.includes(arg.code))
    .map(arg => `mkReqArg '${arg.code}' r.${arg.label}`);
  const optArgCalls = args
    .filter(arg => signature.optional && signature.optional.includes(arg.code))
    .map(arg => `mkArg '${arg.code}' r.${arg.label}`);
  
  const allArgCalls = [...reqArgCalls, ...optArgCalls];
  const allArgs = allArgCalls.length > 0
    ? allArgCalls.join(",\n          ")
    : "";
  
  const dataFields = args.map(arg => genArg(item, signature, arg)).filter(Boolean);
  const dataBody = dataFields.length > 0 
    ? `{ ${dataFields.join(",\n    ")}\n  }`
    : `{}`;
  
  const linkLine = item.link ? `--- ${item.link}` : "";
  const separator = item.link ? "\n" : "";
  
  return `

--------------------------------------------------------------------------------
--- ${typeName} (${item.code})${separator}${linkLine}
--------------------------------------------------------------------------------

data ${typeName} (f :: Type -> Type)
  = ${typeName}
  ${dataBody}
  deriving (Generic)

instance Default (${typeName} NotDefined)

instance Upcast (${typeName} Required) GCodeCmd where
  upcast = ${mkCmdName(item, signature)}

instance ToText (${typeName} Required) where
  toText r = mkCmd "${item.code}" [${allArgs}]
  `.trim();
};

const genItem = (item) => {
  return getSignatures(item).map(sig => genSignature(item, sig)).join("\n\n");
};

const genCmd = (data) => {
  return `
data GCodeCmd
  = ${data.flatMap(item => 
       getSignatures(item).map(sig => `${mkCmdName(item, sig)} (${mkTypeName(item, sig)} Required)`)).join("\n  | ")}
  | Comment (Maybe GCodeCmd) Text
       deriving (Generic)
       `.trim()
};

const genToTextInstance = (data) => {
  const cases = data.flatMap(item =>
    getSignatures(item).map(sig => {
      return `${mkCmdName(item, sig)} r -> toText r`;
    })
  );
  
  return `
instance ToText GCodeCmd where
  toText =
    \\case
      ${cases.join("\n      ")}
      Comment Nothing c -> "; " <> c
      Comment (Just cmd) c -> toText cmd <> " ; " <> c

  `.trim();
};

const getSignatures = (item) => {
  if (item.signature) {
    return [item.signature];
  } else if (item.signatures) {
    return item.signatures;
  } else {
    // Default empty signature for commands without args
    return [{ required: [], optional: [] }];
  }
};

const genModule = (data) => {
  return `
module Marlin.GCode.Generated where

import Marlin.GCode.Class.Default (Default)
import Marlin.GCode.Class.Upcast (Upcast (..))
import Marlin.GCode.Types (ArgValue, Degrees, LaserPower, Mm, MmPerMin, NotDefined, Required(..), Count, Seconds, Milliseconds)
import Relude
import qualified Data.Text as T

--------------------------------------------------------------------------------
--- GCodeCmd
--------------------------------------------------------------------------------

${genCmd(data)}

${genToTextInstance(data)}

instance ToText [GCodeCmd] where
  toText = T.unlines . map toText

withComment :: GCodeCmd -> Text -> GCodeCmd
withComment cmd c = Comment (Just cmd) c

comment :: Text -> GCodeCmd
comment c = Comment Nothing c

--------------------------------------------------------------------------------
--- Commands
--------------------------------------------------------------------------------

${data.map(genItem).join("\n\n")}


--------------------------------------------------------------------------------
--- Utils
--------------------------------------------------------------------------------

mkArg :: (Upcast a ArgValue) => Char -> Maybe a -> Maybe (Char, ArgValue)
mkArg c = fmap (\\a -> (c, upcast a))

mkReqArg :: (Upcast a ArgValue) => Char -> Required a -> Maybe (Char, ArgValue)
mkReqArg c (Required a) = Just (c, upcast a)

mkCmd :: Text -> [Maybe (Char, ArgValue)] -> Text
mkCmd c args = c <> " " <> T.unwords (map (\\(c, a) -> T.singleton c <> toText a) (catMaybes args))

`.trim();
};

const main = async () => {
  const specPath = path.join(__dirname, "..", "spec.json");
  const data = JSON.parse(await fs.readFile(specPath, "utf-8"));
  const module = genModule(data);
  await fs.writeFile(path.join(__dirname, "..", "src", "Marlin", "GCode", "Generated.hs"), module);
};

main();