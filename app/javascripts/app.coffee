window.App = Ember.Application.create()

App.Router.map ->
  @resource 'tables', ->
    @resource 'table', path: ':table_id'

App.Store = DS.Store.extend
  revision: 14
  adapter: DS.FixtureAdapter
