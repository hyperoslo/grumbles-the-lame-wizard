class Location::CastleEntrance < Location
  def connections
    [:road_to_castle, :castle]
  end

  def describe
    'The <strong>guard</strong> watches the castle grounds 24/7. No entrance for pleb wizards.'
  end

  def move_player_to(next_location)
    current_location = self

    if next_location.is?(:castle)
      guard = current_location.find :guard
      if guard.drunk.eql? true
        player.move_node_to(next_location)
        "I will sneak into the castle while the <strong>guard</strong> is drunk. The beautiful princess and untold riches await!"
      else
        describe
      end
    else
      super
    end
  end

end
