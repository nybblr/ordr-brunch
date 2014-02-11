window.App = Ember.Application.create()

App.Router.map ->
  @resource 'dashboard', path: '/'
