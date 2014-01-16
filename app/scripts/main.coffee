#/*global require*/
'use strict'

require.config
  shim:
    underscore:
      exports: '_'
    backbone:
      deps: [
        'underscore'
        'jquery'
      ]
      exports: 'Backbone'
    "handlebars": 
      exports: 'Handlebars'
    
  paths:
    jquery: '../bower_components/jquery/jquery'
    backbone: '../bower_components/backbone/backbone'
    underscore: '../bower_components/underscore/underscore'
    handlebars: '../bower_components/handlebars/handlebars.runtime'
    jed: '../bower_components/jed/jed'
    
require [
  'backbone'
  'helpers'
  'view/panel'
], (Backbone, Helpers, PanelView) ->
  Backbone.history.start()
  view = new PanelView el: '.container'
  view.render()