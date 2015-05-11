class GoogleControll.Routers.EntriesRouter extends Backbone.Router
  initialize: (options) ->
    @entries = new GoogleControll.Collections.EntriesCollection()
    @entries.reset options.entries

  routes:
    "new"      : "newEntry"
    "index"    : "index"
    ":id/edit" : "edit"
    ":id"      : "show"
    ".*"        : "index"



  newEntry: ->
    @view = new GoogleControll.Views.Entries.NewView(collection: @entries)
    $("#entries").html(@view.render().el)

  index: ->
    @view = new GoogleControll.Views.Entries.IndexView(entries: @entries)
    $("#entries").html(@view.render().el)

  show: (id) ->
    entry = @entries.get(id)

    @view = new GoogleControll.Views.Entries.ShowView(model: entry)
    $("#entries").html(@view.render().el)

  edit: (id) ->
    entry = @entries.get(id)

    @view = new GoogleControll.Views.Entries.EditView(model: entry)
    $("#entries").html(@view.render().el)
