const fs = require("fs/promises");
const path = require("path");

const mkTypeName = (item, signature) => {
  return `${item.code}_${item.type}_${item.subtype}${signature.name ? `_${signature.name}` : ""}`;
};

const genArg = (item, signature, arg) => {
  return signature.required.includes(arg.code) 
     ? `  ${arg.label} :: f ${arg.type}` 
     : signature.optional.includes(arg.code) 
     ? `  ${arg.label} :: Maybe ${arg.type}`
     : null;
};

const genSignature = (item, signature) => {
  const typeName = mkTypeName(item, signature);
  
  return `

--------------------------------------------------------------------------------
--- ${typeName}
--------------------------------------------------------------------------------

data ${typeName} (f :: Type -> Type) 
  = ${typeName} {
${item.args.map(arg => genArg(item, signature, arg)).filter(Boolean).join(",\n")}
} deriving (Generic)

instance Default (${typeName} Required)
instance Upcast (${typeName} Required) GCodeCmd where
  upcast = Cmd_${typeName}
  `.trim();
};

const genItem = (item) => {
  return getSignatures(item).map(sig => genSignature(item, sig)).join("\n\n");
};

const genCmd = (data) => {
  return `
data GCodeCmd
  = ${data.flatMap(item => 
       getSignatures(item).map(sig => `Cmd_${mkTypeName(item, sig)} (${mkTypeName(item, sig)} Required)`)).join("\n  | ")}
   deriving (Generic)
       `.trim()
};

const getSignatures = (item) => {
  return item.signature ? [item.signature] : item.signatures;
};

const genModule = (data) => {
  return `
module Marlin.GCode.Generated where

import Marlin.GCode.Class.Default (Default)
import Marlin.GCode.Class.Upcast (Upcast (..))
import Marlin.GCode.Types (Offset, Count, Radius, Pos, Power, Rate, Required)
import Relude (Generic, Maybe, Type)

${genCmd(data)}

${data.map(genItem).join("\n\n")}
`.trim();
};

const main = async () => {
  const specPath = path.join(__dirname, "..", "spec.json");
  const data = JSON.parse(await fs.readFile(specPath, "utf-8"));
  const module = genModule(data);
  await fs.writeFile(path.join(__dirname, "..", "src", "Marlin", "GCode", "Generated.hs"), module);
};

main();