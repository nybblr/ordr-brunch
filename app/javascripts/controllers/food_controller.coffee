App.FoodController = Ember.ArrayController.extend
  addFood: (food) ->
    table = @controllerFor('table')
    tabItems = table.get('tab.tabItems')
    tabItems.createRecord
      food: food
      cents: food.get('cents')
