# yadb = require './YouAreDaBomb'

class UseCase
  start: () =>
    # @httpAdapter.start()

  helloWorld: =>
    @httpAdapter.respond("hello from useCase")


module.exports = UseCase
