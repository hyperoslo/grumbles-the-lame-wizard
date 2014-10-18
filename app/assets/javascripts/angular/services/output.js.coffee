angular.module("grumbles")
  .factory "Output", ($rootScope) ->
    @log = []

    combinedLog: =>
      @log.join "<br>"

    add: (text) =>
      @log.push text

      $rootScope.$emit "outputChanged"
