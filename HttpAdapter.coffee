http = require 'http'

class HttpAdapter
  constructor: (@useCase) ->

  start: =>
    server = http.createServer (req, res) =>
      @requestHappened(req, res)

    server.listen 1337, '127.0.0.1'
    console.log 'Server running at http://127.0.0.1:1337/'

  requestHappened: (@req, @res) =>

  respond: (msg) =>
    @res.writeHead 200, {'Content-Type': 'text/json'}
    @res.end "#{msg}\n"


module.exports = HttpAdapter
