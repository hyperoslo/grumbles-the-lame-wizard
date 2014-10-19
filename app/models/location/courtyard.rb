class Location::Courtyard < Location
  def connections
    [ :inn, :bank, :forgery, :bar, :church, :road_to_castle ]
  end

  def description
    'Courtyard is central place of magical city'
  end
end
