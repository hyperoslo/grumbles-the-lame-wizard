angular.module("grumbles")
  .directive "formOutput", ($rootScope, Output) ->
    template: '<output ng-bind-html="outputHtml"></output>'

    scope: {}

    link: (scope) ->
      $rootScope.$on "outputChanged", ->
        scope.outputHtml = Output.combinedLog()
