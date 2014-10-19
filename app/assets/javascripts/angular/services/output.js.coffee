angular.module("grumbles")
  .factory "Output", ($rootScope) ->
    @log = []

    combinedLog: =>
      @log.map (data) ->
        "<div class=\"response #{data.status}\">#{data.response}</div>"
      .join ""

    add: (data) =>
      @log.push data
      $rootScope.$emit "outputChanged"
