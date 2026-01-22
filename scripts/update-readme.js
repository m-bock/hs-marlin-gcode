const fs = require('fs');
const path = require('path');

let readme = fs.readFileSync('README.md', 'utf-8');

// Match START comment, content, END comment (with optional code fences before/after)
const regex = /(```\w+\n)?<!-- START:RAW (.+?) -->[\s\S]*?<!-- END:RAW -->(\n```)?/g;

readme = readme.replace(regex, (match, startFence, filePath, endFence) => {
  // Extract extension from file path
  const ext = path.extname(filePath).slice(1) || path.basename(filePath).split('.').pop();
  
  // Map common extensions to fence names
  const fenceMap = {
    'hs': 'haskell',
    'gcode': 'gcode',
    'js': 'javascript',
    'json': 'json',
    'md': 'markdown',
    'py': 'python',
    'sh': 'bash',
    'yaml': 'yaml',
    'yml': 'yaml'
  };
  
  const fence = fenceMap[ext] || ext;
  
  // Read file content
  const fileContent = fs.existsSync(filePath) 
    ? fs.readFileSync(filePath, 'utf-8').trimEnd() 
    : '';
  
  return '<!-- START:RAW ' + filePath + ' -->\n```' + fence + '\n' + fileContent + '\n```\n<!-- END:RAW -->';
});

fs.writeFileSync('README.md', readme);

