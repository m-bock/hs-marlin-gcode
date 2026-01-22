gen:
    MODULE_PATH=src/Marlin/GCode/Generated.hs \
    MODULE_NAME=Marlin.GCode.Generated \
    SPEC_PATH=assets/spec.json \
    node scripts/gen.js
    ormolu --mode inplace src/Marlin/GCode/Generated.hs

unimplemented:
    @node -e "const fs = require('fs'); const data = JSON.parse(fs.readFileSync('assets/spec.json', 'utf-8')); data.filter(x => x.unimplemented).sort((a, b) => (a.complexity || 999) - (b.complexity || 999)).forEach(x => { const reason = typeof x.unimplemented === 'string' ? x.unimplemented : 'No reason provided'; const complexity = x.complexity !== undefined ? ' (complexity: ' + x.complexity + ')' : ''; console.log(x.code + ': ' + reason + complexity); });"

unimplemented-codes:
    @node -e "const fs = require('fs'); const data = JSON.parse(fs.readFileSync('assets/spec.json', 'utf-8')); const codes = data.filter(x => x.unimplemented).map(x => '\`' + x.code + '\`').join(', '); const implemented = data.filter(x => !x.unimplemented).length; console.log(codes); console.log(''); console.log(implemented + ' commands implemented');"

update-readme:
    node scripts/update-readme.js
    
