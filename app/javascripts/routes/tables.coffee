App.TablesRoute = Ember.Route.extend
  model: ->
    App.Table.find()

App.TableRoute = Ember.Route.extend
  model: (params) ->
    App.Table.find(params.table_id)
