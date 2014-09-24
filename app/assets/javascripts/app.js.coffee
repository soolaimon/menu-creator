'use strict';

window.menuCreator = angular.module('menuCreator', ['ngResource', 'ui.router'])

menuCreator.config(() -> 
  $urlRouterProvider.otherwise("/main")

  $stateProvider
    .state("main",
      url: "/main",
      templateUrl: "templates/main.html")
)

