class Location::RoadToCastle < Location
  def connections
    [:courtyard, :castle_entrance]
  end

  def describe
    'The <strong>castle</strong> is up ahead, past the <strong>river<strong> - which is inconveniently guarded by a <strong>norwegian_troll</strong>.'
  end

  def move_player_to(next_location)
    current_location = self

    if next_location.is?(:castle_entrance)
      if player.in_shoes
        player.move_node_to(next_location)
        "I’m walking on water! EAT THAT crocolisks. Arrived at the <strong>castle_entrance</strong>."
      else
        "There’s a <strong>norwegian_troll</strong> on the bridge. It smells like a pig and is likely dangerous!"
      end
    else
      super
    end
  end

end
