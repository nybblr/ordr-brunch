App.ApplicationRoute = Ember.Route.extend
  setupController: ->
    @controllerFor('food').set 'model', App.Food.find()
