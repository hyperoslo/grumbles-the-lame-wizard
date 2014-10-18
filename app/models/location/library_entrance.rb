class Location::LibraryEntrance < Location
  def connections
    [:courtyard, :library]
  end

  def describe
    'Spider webs bar my way! It seems libraries aren\'t that popular nowadays'
  end
end
