class Location::Courtyard < Location
  def connections
    [ :inn, :bank, :forgery, :bar, :church, :road_to_castle ]
  end

  def description
    'Courtyard is central place of magical city'
  end

  def move_player_to(next_location_key)
    current_location = self
    next_location = current_location.parent.find_in_tree next_location_key.to_sym

    hedge = current_location.find :hedge

    if current_location.id.eql? next_location_key.to_sym
      "You are already in #{next_location_key}"
    elsif next_location_key == "bank"
      if hedge.nil?
        player.move_node_to(next_location)
        "Nothing can stop powerfull wizard, which luckly I am!"
      elsif hedge.open == false
        "Hedge is on my way, and it's protected by powerfull spell. How can I get through it?"
      else
        player.move_node_to(next_location)
        "Nothing can stop powerfull wizard, which luckly I am!"
      end
    elsif connects_to? next_location_key.to_sym
      player.move_node_to(next_location)
      "Woohoo, you moved, now you are in #{next_location_key}"
    else
      "That location is way too far"
    end
  end

end
