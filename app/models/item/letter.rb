class Item::Letter < Item
  def describe
    <<-HTML
      HAI GRUMBLES,

      No doubt you’ve heard of the princess that went missing not long ago. We’ve tracked her GPS-enabled crown to a vault in the castle south of here, but no sane person dares venture there.

      In this kingdom, <a href="http://google.com/#q=http+methods" target="_blank">HTTP verbs</a> are used to interact with its inhabitants, locations and items.

      To get started, try the following commands:

      $ <strong>TRACE me</strong>
      $ <strong>SEARCH me</strong>
      $ <strong>MOVE courtyard</strong>

      For all of the available commands, read the game manual:

      $ <strong>TRACE game_manual</strong>

      Yours truly,

      ’Friend’
    HTML
  end
end
