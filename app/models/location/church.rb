class Location::Church < Location
  def connections
    [:courtyard, :church_library]
  end

  def describe
    if self.find :insects
      'Spider webs bar my way! It seems libraries aren’t that popular nowadays.'
    else
      'Church without webs, holy spirit in the air.'
    end
  end

  def move_player_to(next_location)
    current_location = self

    insects = current_location.find :insects

    if next_location.is? :church_library && insects.present?
      if player.find :insect_hunters
        "Spiders-flasheaters still bar my way. But now I have insect hunters with me."
      else
        hunters = game.find_in_tree :insect_hunters
        hunters.active = true
        "I'm afraid of insects so much! Perhaps I need some help."
      end
    else
      player.move_node_to(next_location)
      "Woohoo, you moved, now you are in <strong>#{next_location.id}</strong>."
    end
  end
end
