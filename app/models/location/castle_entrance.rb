class Location::CastleEntrance < Location
  def connections
    [:road_to_castle, :castle]
  end

  def describe
    '<strong>guard</strong> watches castle entrance 24/7. No entrance for pleb wizards.'
  end

  def move_player_to(next_location)
    current_location = self

    if next_location.is?(:castle)
      guard = current_location.find :guard
      if guard.drunk.eql? true
        player.move_node_to(next_location)
        "I can sneak into the castle, while guard is drunk. Beautiful princess and untold riches inside!"
      else
        describe
      end
    else
      player.move_node_to(next_location)
      "Woohoo, you moved, now you are in <strong>#{next_location.id}</strong>."
    end
  end


end
