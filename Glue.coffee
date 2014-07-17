DaBomb = require './YouAreDaBomb'

class Glue
  constructor: (@useCase, @http, @router, @booksAPI)->
    DaBomb.After(@useCase, "start", => @http.start())
    DaBomb.After(@http, "requestHappened", (req, res)=> @router.delegate(req, res))
    DaBomb.After(@router, "booksRequest", (path, req, res)=> @booksAPI.respond(path,req,res))
    DaBomb.After(@booksAPI, "render", (json) => @http.respondJSON(json)) 
    # Wrong request is only a draft, it's ugly
    DaBomb.After(@router, "wrongRequest", (req, res)=> @http.wrongRequest(req, res))
    
module.exports = Glue
