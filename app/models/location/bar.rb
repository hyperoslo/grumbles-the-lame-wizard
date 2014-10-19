class Location::Bar < Location
  def connections
    [:courtyard]
  end

  def describe
    'Apart from the wine being seemingly infinite, this is a fairly ordinary bar.'
  end
end
