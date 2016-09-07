fs = require "fs"
yaml = require "js-yaml"
appRootPath = require "app-root-path"
path = require "path"

converter = module.exports = (filepath) ->
  if not path.extname filepath
    filepath = "#{filepath}.yaml"

  yaml.safeLoad fs.readFileSync filepath, 'utf8'

converter.resolve = (filepath) ->
  converter appRootPath.resolve filepath
