angular.module("grumbles")
  .controller "FormCtrl", ($http, Output) ->
    INFO_TEXT = """
      Welcome (back?)!

      There’s a <strong>letter</strong> in your inventory.
      Type <strong>TRACE&nbsp;letter</strong> to read it.

      GLHF
    """

    Output.add
      status: "info"
      response: INFO_TEXT

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

      Output.add
        status: "command"
        response: command.query

      $http.post("/cli/#{path}")
        .success (data, status, headers, config) =>
          Output.add data
          @command = ""

          queryCommand @commandQueue[command.nextIndex]

        .error (data, status, headers, config) =>
          Output.add data if angular.isObject(data)

          @commandQueue = []

    this
