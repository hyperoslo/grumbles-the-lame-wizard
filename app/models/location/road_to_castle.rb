class Location::RoadToCastle < Location
  def connections
    [:courtyard, :castle_moat]
  end

  def describe
    'Castle is far, road is hard'
  end
end
