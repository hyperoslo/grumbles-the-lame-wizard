angular.module("grumbles")
  .directive "formOutput", ($rootScope, $timeout, Output) ->
    template: '<output ng-bind-html="outputHtml"></output>'

    scope: {}

    link: (scope, element) ->
      scope.outputHtml = Output.combinedLog()

      $rootScope.$on "outputChanged", ->
        scope.outputHtml = Output.combinedLog()

        $timeout ->
          child = element.children()[0]
          child.scrollTop = child.scrollHeight
