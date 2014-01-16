define [
  'backbone'
  'templates'
], (Backbone, templates) ->
  class Panel extends Backbone.View
    template: templates['panel']
    
    render: ->
      @el.innerHTML = @template
        name: 'Arthur'
        translation: 3
      @