angular.module("grumbles")
  .controller "FormCtrl", ($http, Output) ->
    @submit = ->
      return unless @command

      words = @command.split ' '
      words.length = 3
      path = words.join '/'

      $http.post("/cli/#{path}")
        .success (data, status, headers, config) =>
          Output.add data
          @command = ""

        .error (data, status, headers, config) ->
          Output.add data if angular.isObject(data)

    this
