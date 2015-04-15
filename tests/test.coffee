chai = require 'chai'
expect   = chai.expect
routes = require "../routes/index.coffee"

describe "routes", ->
  req = {}
  res = {}
  describe "index", ->
    it "Should have an index with a predictive parser title", ->
      res.render = (view, vars) ->
          expect(view).equal "index"
          expect(vars.title).equal "Predictive parser"
      routes.index(req, res)
