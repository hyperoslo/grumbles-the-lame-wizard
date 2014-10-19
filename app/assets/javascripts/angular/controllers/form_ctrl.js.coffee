angular.module("grumbles")
  .controller "FormCtrl", ($http, Output) ->
    @commandQueue = []

    @submit = ->
      return unless @command

      @commandQueue = @command.split("&&").map (command, index) ->
        query: command.trim()
        nextIndex:  index + 1

      queryCommand @commandQueue[0]

    queryCommand = (command) =>
      return unless command
      return if @form.$invalid

      words = command.query.split ' '
      words.length = 3
      path = words.join '/'

      $http.post("/cli/#{path}")
        .success (data, status, headers, config) =>
          Output.add data
          @command = ""

          queryCommand @commandQueue[command.nextIndex]

        .error (data, status, headers, config) =>
          Output.add data if angular.isObject(data)

          @commandQueue = []

    this
