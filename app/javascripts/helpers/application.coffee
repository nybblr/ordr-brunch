Ember.Handlebars.registerBoundHelper 'money', (value) ->
  if value % 100 is 0
    value / 100 + '.00'
  else
    parseInt(value / 100, 10) + '.' + value % 100
