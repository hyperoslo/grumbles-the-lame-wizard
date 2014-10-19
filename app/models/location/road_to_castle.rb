class Location::RoadToCastle < Location
  def connections
    [:courtyard, :castle_moat]
  end

  def describe
    'Castle is far, road is hard'
  end

  def move_player_to(next_location)
    current_location = self

    if next_location.is?(:castle_moat)
      if player.find :holy_shoes
        player.move_node_to(next_location)
        "I can walk on the water, what a nonsense, and crocolisks aren't handrance for me anymore! To the castle!"
      else
        "Norwegian troll on the bridge, he smalls like a big and he is dangerous!"
      end
    else
      player.move_node_to(next_location)
      "Woohoo, you moved, now you are in <strong>#{next_location.id}</strong>."
    end
  end

end
