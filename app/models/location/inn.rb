class Location::Inn < Location

  def connections
    [ :courtyard ]
  end

  def move_player_to(next_location)
    current_location = self

    door = current_location.find :inn_door

    if door.open.eql? false
      'The inn door is closed, there has to be a key nearby?'
    else
      player.move_node_to(next_location)
      'You make your way to the courtyard.'
    end
  end

  def describe
    'An ordinary inn. The usual.'
  end

end
