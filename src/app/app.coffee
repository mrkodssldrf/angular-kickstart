app = angular.module('keepinmind', ['ngRoute', 'ngMaterial'])

app.config(($mdThemingProvider) ->
  $mdThemingProvider.theme 'default'
    .primaryPalette 'deep-orange'
    .accentPalette 'orange'
)
app.config ($routeProvider) ->
  'use strict'
  $routeProvider
    .when '/todo',
      controller: require('./todo/todo-controller').inject app
      templateUrl: '/keepinmind/todo/todo.html'
    .otherwise
      redirectTo: '/todo'
