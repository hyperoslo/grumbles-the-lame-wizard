class Location::Courtyard < Location
  def connections
    [ :inn, :bank, :forgery, :bar, :church, :road_to_castle ]
  end

  def description
    'Courtyard is central place of magical city'
  end

  def move_player_to(next_location)
    current_location = self

    hedge = current_location.find :hedge

    if next_location.is? :bank
      if hedge.nil?
        player.move_node_to(next_location)
        "Nothing can stop powerfull wizard, which luckly I am!"
      elsif hedge.open == false
        "Hedge is on my way, and it's protected by powerfull spell. How can I get through it?"
      else
        player.move_node_to(next_location)
        "Nothing can stop powerfull wizard, which luckly I am!"
      end
    else
      player.move_node_to(next_location)
      "Woohoo, you moved, now you are in <strong>#{next_location.id}</strong>"
    end
  end

end
