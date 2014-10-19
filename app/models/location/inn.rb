class Location::Inn < Location

  def connections
    [ :courtyard ]
  end

  def move_player_to(next_location)
    current_location = self

    door = current_location.find :inn_door

    if door.open.eql? false
      'The <strong>inn_door</strong> is closed, there has to be a key nearby?'
    else
      super
    end
  end

  def describe
    'An ordinary <strong>inn</strong>. The usual.'
  end

end
