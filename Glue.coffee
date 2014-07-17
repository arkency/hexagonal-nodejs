DaBomb = require './YouAreDaBomb'

class Glue
  constructor: (@useCase, @http)->
    DaBomb.After(@useCase, "start", => @http.start())
    DaBomb.After(@http, "requestHappened", => @http.respond("pong"))

module.exports = Glue
