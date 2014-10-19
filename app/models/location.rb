class Location < BaseEntity

  def connections
    []
  end

  def connects_to?(id)
    connections.include? id
  end

  def move_player_to(next_location_key)
    current_location = self
    if connects_to? next_location_key.to_sym
      next_location = current_location.parent.find_in_tree next_location_key.to_sym
      player.move_node_to(next_location)
      "Woohoo, you moved, now you are in #{next_location_key}"
    elsif current_location.id.eql? next_location_key.to_sym
      "You are already in #{next_location_key}"
    else
      "That location is way too far"
    end
  end

  def list_connections
    connections.map do |connection|
      " - <strong>#{connection}</strong>"
    end.join '<br>'
  end

  def move_allowed?(target)
    true
  end

end
