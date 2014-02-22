Travis.LimitedArray = Em.ArrayProxy.extend
  limit: 10
  isLoadedBinding: 'content.isLoaded'
  arrangedContent: Ember.computed.limit('content', 'limit')

  totalLength: (->
    @get('content.length')
  ).property('content.length')

  leftLength: (->
    totalLength = @get('totalLength')
    limit       = @get('limit')

    left = totalLength - limit
    if left < 0 then 0 else left
  ).property('totalLength', 'limit')

  isMore: (->
    @get('leftLength') > 0
  ).property('leftLength')

  showAll: ->
    @set 'limit', Infinity
