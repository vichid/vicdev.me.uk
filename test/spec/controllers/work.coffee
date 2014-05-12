'use strict'

describe 'Controller: WorkCtrl', ->

  # load the controller's module
  beforeEach module 'portfolioApp'

  WorkCtrl = {}
  scope = {}

  # Initialize the controller and a mock scope
  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()
    WorkCtrl = $controller 'WorkCtrl', {
      $scope: scope
    }