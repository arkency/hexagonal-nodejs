http = require 'http'

class UseCase
  start: (@httpAdapter) =>
    @httpAdapter.start()

  helloWorld: =>
    @httpAdapter.respond("hello from useCase")


class HttpAdapter

  constructor: (@useCase) ->

  start: =>
    server = http.createServer (req, res) =>
      @requestHappened(req, res)

    server.listen 1337, '127.0.0.1'
    console.log 'Server running at http://127.0.0.1:1337/'

  requestHappened: (@req, @res) =>
    @useCase.helloWorld()

  respond: (msg) =>
    @res.writeHead 200, {'Content-Type': 'text/json'}
    @res.end "#{msg}\n"



useCase     = new UseCase()
httpAdapter = new HttpAdapter(useCase)

useCase.start(httpAdapter)

