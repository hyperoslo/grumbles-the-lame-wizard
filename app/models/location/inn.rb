class Location::Inn < Location

  def connections
    [ :courtyard ]
  end

  def move_player_to(next_location)
    current_location = self

    door = current_location.find :inn_door

    if door.open.eql? false
      "It seems door is closed, if there is a lock there should be the key"
    else
      player.move_node_to(next_location)
      "Woohoo, you moved to the #{next_location.id}"
    end
  end

  def describe
    'Beautiful inn, such precious furniture'
  end

end
