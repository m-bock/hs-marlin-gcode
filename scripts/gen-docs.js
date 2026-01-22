const fs = require('fs');
const path = require('path');

const specPath = process.env.SPEC_PATH || 'assets/spec.json';
const outputPath = process.env.OUTPUT_PATH || 'API.md';

const data = JSON.parse(fs.readFileSync(specPath, 'utf-8'));

const formatCommand = (item) => {
  const lines = [];
  
  // Header with type and code
  const header = `## ${item.type} (${item.code})`;
  lines.push(header);
  lines.push('');
  
  // Link to official docs
  if (item.link) {
    lines.push(`**Documentation:** [${item.link}](${item.link})`);
    lines.push('');
  }
  
  // Status
  if (item.unimplemented) {
    const reason = typeof item.unimplemented === 'string' 
      ? item.unimplemented 
      : 'Not implemented';
    const complexity = item.complexity !== undefined 
      ? ` (complexity: ${item.complexity})` 
      : '';
    lines.push(`⚠️ **Status:** Unimplemented - ${reason}${complexity}`);
    lines.push('');
  } else {
    lines.push('✅ **Status:** Fully Implemented');
    lines.push('');
  }
  
  // Arguments
  if (item.args && item.args.length > 0) {
    lines.push('### Arguments');
    lines.push('');
    
    if (item.signature) {
      const requiredArgs = item.args.filter(arg => 
        item.signature.required && item.signature.required.includes(arg.code)
      );
      const optionalArgs = item.args.filter(arg => 
        item.signature.optional && item.signature.optional.includes(arg.code)
      );
      
      if (requiredArgs.length > 0) {
        lines.push('**Required:**');
        lines.push('');
        requiredArgs.forEach(arg => {
          const fieldName = arg.label || 'unnamed';
          const argCode = arg.code === '_' ? '_' : arg.code;
          lines.push(`- ${fieldName} **${arg.type}** (${argCode})`);
        });
        lines.push('');
      }
      
      if (optionalArgs.length > 0) {
        lines.push('**Optional:**');
        lines.push('');
        optionalArgs.forEach(arg => {
          const fieldName = arg.label || 'unnamed';
          const argCode = arg.code === '_' ? '_' : arg.code;
          lines.push(`- ${fieldName} :: **${arg.type}** (${argCode})`);
        });
        lines.push('');
      }
    } else {
      // Fallback if no signature
      lines.push('**Optional:**');
      lines.push('');
      item.args.forEach(arg => {
        const fieldName = arg.label || 'unnamed';
        const argCode = arg.code === '_' ? '_' : arg.code;
        lines.push(`- ${fieldName} **${arg.type}** (${argCode})`);
      });
      lines.push('');
    }
  } else {
    lines.push('*No arguments*');
    lines.push('');
  }
  
  return lines.join('\n');
};

// Group commands by type (G vs M)
const gCommands = data.filter(item => item.code.startsWith('G'));
const mCommands = data.filter(item => item.code.startsWith('M'));
const otherCommands = data.filter(item => 
  !item.code.startsWith('G') && !item.code.startsWith('M')
);

// Sort commands by code
const sortByCode = (a, b) => {
  // Extract numeric part for comparison
  const numA = parseInt(a.code.match(/\d+/)?.[0] || '0');
  const numB = parseInt(b.code.match(/\d+/)?.[0] || '0');
  if (numA !== numB) return numA - numB;
  return a.code.localeCompare(b.code);
};

gCommands.sort(sortByCode);
mCommands.sort(sortByCode);
otherCommands.sort(sortByCode);

// Generate markdown
const mdLines = [
  '# Marlin G-Code API Reference',
  '',
  `Generated from \`${specPath}\` on ${new Date().toISOString().split('T')[0]}`,
  '',
  `**Total commands:** ${data.length}`,
  `**Implemented:** ${data.filter(x => !x.unimplemented).length}`,
  `**Unimplemented:** ${data.filter(x => x.unimplemented).length}`,
  '',
  '---',
  '',
  ...gCommands.map(formatCommand),
  '',
  '---',
  '',
  ...mCommands.map(formatCommand),
];

if (otherCommands.length > 0) {
  mdLines.push(
    '',
    '---',
    '',
    '## Other Commands',
    '',
    ...otherCommands.map(formatCommand)
  );
}

const markdown = mdLines.join('\n');

fs.writeFileSync(outputPath, markdown, 'utf-8');
console.log(`API documentation written to ${outputPath}`);

