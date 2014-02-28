{View} = require 'atom'

module.exports =
class JulialangView extends View
  @content: ->
    @div class: 'julialang overlay from-top', =>
      @div "The Julialang package is Alive! It's ALIVE!", class: "message"

  initialize: (serializeState) ->
    atom.workspaceView.command "julialang:toggle", => @toggle()

  # Returns an object that can be retrieved when package is activated
  serialize: ->

  # Tear down any state and detach
  destroy: ->
    @detach()

  toggle: ->
    console.log "JulialangView was toggled!"
    if @hasParent()
      @detach()
    else
      atom.workspaceView.append(this)
