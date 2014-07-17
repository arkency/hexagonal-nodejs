
class BooksAPI
  constructor: ->
  
  findAll: ->
    [
      {
        author: "Dostojewski"
        title:  "Zbrodnia i kara"
      },
      {
        author: "Sapkowski"
        title:  "Wiedźmak"
      }
    ]

  respond: (path, req, res)=>
    all = @findAll()
    @render(all)
  
  render: (json) =>
    
module.exports = BooksAPI
