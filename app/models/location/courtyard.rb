class Location::Courtyard < Location
  def connections
    [ :inn, :bank, :forgery, :bar, :church, :road_to_castle ]
  end

  def describe
    'The <strong>courtyard</strong> is the central place of this magical city.'
  end

  def move_player_to(next_location)
    current_location = self

    hedge = current_location.find :hedge

    if next_location.is? :bank
      if hedge.nil? || hedge.open
        player.move_node_to(next_location)
        "Nothing can stop this powerful wizard! I enter the <strong>bank</strong>."
      else
        "The <strong>hedge</strong> is in the way and it’s protected by a powerful spell. How to get through?"
      end
    else
      super
    end
  end

end
