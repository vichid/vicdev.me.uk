'use strict'

angular
  .module('portfolioApp', [
    'ngCookies',
    'ngResource',
    'ngSanitize',
    'ngRoute',
    'ngAnimate',
    'mgcrea.ngStrap'
  ])
  .config ($routeProvider,$locationProvider) ->
    $routeProvider
      .when '/',
        templateUrl: 'views/main.html'
        controller: 'MainCtrl'
      .when '/work',
        templateUrl: 'views/work.html'
        controller: 'WorkCtrl'
      .otherwise
        redirectTo: '/'
    $locationProvider.html5Mode(true);

