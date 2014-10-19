class Location::Church < Location
  def connections
    [:courtyard, :church_library]
  end

  def describe
    if self.find :insects
      'Spider webs bar my way! It seems libraries aren’t that popular nowadays'
    else
      'Church without webs, holy spirit in the air'
    end
  end

  def move_player_to(next_location_key)
    current_location = self
    next_location = current_location.parent.find_in_tree next_location_key.to_sym

    insects = current_location.find :insects

    if current_location.id.eql? next_location_key.to_sym
      "You are already in #{next_location_key}"
    elsif next_location_key == "church_library" && insects.present?
      if player.find :insect_hunters
        # current_location.children.delete(:insects)
        # player.move_node_to(next_location)
        "Spiders-flasheaters still bar my way. But now I have insect hunters with me"
      else
        hunters = game.find_in_tree :insect_hunters
        hunters.active = true
        "I'm afraid insects so much! Parhaps I need some help"
      end
    elsif connects_to? next_location_key.to_sym
      player.move_node_to(next_location)
      "Woohoo, you moved, now you are in #{next_location_key}"
    else
      "That location is way too far"
    end
  end
end
