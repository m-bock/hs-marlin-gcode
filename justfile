gen:
    MODULE_PATH=src/Marlin/GCode/Generated.hs \
    MODULE_NAME=Marlin.GCode.Generated \
    SPEC_PATH=assets/spec.json \
    node scripts/gen.js
    ormolu --mode inplace src/Marlin/GCode/Generated.hs
    
