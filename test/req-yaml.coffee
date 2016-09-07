assert = require "assert"
_ = require "lodash"

reqYaml = require "../lib/req-yaml"

describe 'req-yaml', ->
  json =

  beforeEach ->
    json = reqYaml 'test/example'


  it 'should return a json object', ->
    assert _.isPlainObject json

  it 'should contains a `Director` object', ->
    assert _.has json, 'Director'
    assert _.isPlainObject json.Director

  it 'should contains `Director.Movies` array', ->
    assert _.has json, "Director.Movies"
    assert _.isArray json.Director.Movies
    assert.equal 2, json.Director.Movies.length
