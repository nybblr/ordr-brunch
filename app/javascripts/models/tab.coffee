App.Tab = DS.Model.extend
  tabItems: DS.hasMany('App.TabItem')
  cents:(->
    @get('tabItems').getEach('cents').reduce (accum, item) ->
      accum + item
    , 0
  ).property('tabItems.@each.cents')

App.Tab.FIXTURES = [{
  id: 1,
  tabItems: []
}, {
  id: 2,
  tabItems: []
}, {
  id: 3,
  tabItems: []
}, {
  id: 4,
  tabItems: [400, 401, 402, 403, 404]
}, {
  id: 5,
  tabItems: []
}, {
  id: 6,
  tabItems: []
}]
