class Location::CastleMoat < Location
  def connections
    [:road_to_castle, :castle_treasury]
  end

  def describe
    'Moat without a boat'
  end
end
