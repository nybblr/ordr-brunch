App.FoodController = Ember.ArrayController.extend
  needs: 'table'
  actions:
    addFood: (food) ->
      table = @get('controllers.table')
      tabItems = table.get('tab.tabItems')
      tabItems.createRecord
        food: food
        cents: food.get('cents')
