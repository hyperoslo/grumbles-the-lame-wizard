class Location::CastleMoat < Location
  def connections
    [:road_to_castle, :castle_treasury]
  end

  def describe(game)
    'moat description and shit'
  end
end
