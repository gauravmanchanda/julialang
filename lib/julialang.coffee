JulialangView = require './julialang-view'

module.exports =
  julialangView: null

  activate: (state) ->
    @julialangView = new JulialangView(state.julialangViewState)

  deactivate: ->
    @julialangView.destroy()

  serialize: ->
    julialangViewState: @julialangView.serialize()
