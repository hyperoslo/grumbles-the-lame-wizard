class Item::Letter < Item
  def describe
    <<-HTML
      HAI GRUMBLES,

      No doubt you’ve heard of the princess that went missing not long ago. We’ve
      tracked her GPS-enabled crown to a vault in the castle south of here, but no
      sane person dares venture there. It might be worth the risk.

      To get started, try the following commands:

      $ <strong>TRACE game_manual</strong>
      $ <strong>SEARCH room</strong>
      $ <strong>MOVE courtyard</strong>

      Yours truly,

      ’Friend’
    HTML
  end
end
