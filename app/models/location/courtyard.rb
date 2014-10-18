class Location::Courtyard < Location
  def connections
    [ :inn, :bank, :forgery, :bar, :library_entrance, :road_to_castle ]
  end

  def describe(game)
    'Beautiful inn, such precious furniture'
  end
end
