class Location::Inn < Location

  def connections
    [ :courtyard ]
  end

  def describe(game)
    'Beautiful inn, such precious furniture'
  end

end
