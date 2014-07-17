
class Router
  constructor: ->

  delegate: (req, res) =>
    path = req.url.split("/")[1..-1]

    if path[0] is "books" 
      console.log("booksRequest")
      @booksRequest(path[1..-1], req, res)
    else
      console.log("wrongRequest")
      @wrongRequest(req, res)

  wrongRequest: (req, res) =>
  booksRequest: (req, res) =>

module.exports = Router
