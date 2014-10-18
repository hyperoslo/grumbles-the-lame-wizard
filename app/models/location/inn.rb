class Location::Inn < Location

  def connections
    [ :courtyard ]
  end

 def move_player_to(next_location_key)
    current_location = self

    door = current_location.find :inn_door

    if current_location.id.eql? next_location_key.to_sym
      "You are already in #{next_location_key}"
    elsif door.open.eql? false
      "It seems door is closed, if there is a lock there should be the key"
    elsif connects_to? next_location_key.to_sym
      next_location = current_location.parent.find_in_tree next_location_key.to_sym
      player.move_node_to(next_location)
      "Woohoo, you moved, now you are in #{next_location_key}"
     else
      "That location is way too far"
    end
  end



  def description
    'Beautiful inn, such precious furniture'
  end

end
