class Location::Church < Location
  def connections
    [:courtyard, :church_library]
  end

  def describe
    if self.find :insects
      'Spiders and bugs <strong>bar</strong> my way! It seems libraries aren’t that popular nowadays.'
    else
      'The <strong>church</strong> is cleansed of <strong>insects</strong>. A holy spirit fills the air.'
    end
  end

  def move_player_to(next_location)
    current_location = self

    insects = current_location.find :insects

    if next_location.is?(:church_library) && insects.present?
      if player.find :insect_hunters
        "Flesh-eating spiders are still in my way, but the <strong>insect_hunters</strong> are with me.."
      else
        hunters = game.find_in_tree :insect_hunters
        hunters.active = true
        "I'm very afraid of <strong>insects</strong>! Perhaps I need some help to advance."
      end
    else
      super
    end
  end
end
