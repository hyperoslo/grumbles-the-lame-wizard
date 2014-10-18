angular.module("grumbles")
  .controller "FormCtrl", ($http, Output) ->
    @submit = ->
      return unless @command

      split_command = @command.split " "

      verb         = split_command[0]
      entity       = split_command[1]
      other_entity = split_command[2]

      path  = "/#{verb}/#{entity}"
      path += "/#{other_entity}" if other_entity?

      $http.post(path)
        .success (data, status, headers, config) ->
          Output.add data

        .error (data, status, headers, config) ->
          console.error "Everything sucks ...", data

    this
