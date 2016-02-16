const fs = require('fs');
const yaml = require('js-yaml');

module.exports = function(filename) {
    var cnt = fs.readFileSync(filename, 'utf8');
    
    return yaml.load(cnt);
};