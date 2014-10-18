class Location::Inn < Location

  def connections
    [ :courtyard ]
  end

#  def move_player_to(next_location)
#    if next_location in connections
#
#    else
#    end
#  end
#
  def describe(game)
    'Beautiful inn, such precious furniture'
  end

end
