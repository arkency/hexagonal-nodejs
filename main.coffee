http = require 'http'

class HttpAdapter
  start: =>
    server = http.createServer (req, res) ->
      res.writeHead 200, {'Content-Type': 'text/plain'}
      res.end 'Hello from http adapter\n'

    server.listen 1337, '127.0.0.1'

    console.log 'Server running at http://127.0.0.1:1337/'

httpAdapter = new HttpAdapter()
httpAdapter.start()
