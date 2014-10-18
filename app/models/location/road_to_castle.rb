class Location::RoadToCastle < Location
  def connections
    [:courtyard, :castle_moat]
  end

  def describe(game)
    'Castle is far, road is hard'
  end
end
