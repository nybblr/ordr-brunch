window.App = Ember.Application.create()

App.Router.map ->
  @resource 'dashboard', path: '/'

App.Store = DS.Store.extend
  revision: 14
  adapter: DS.FixtureAdapter
