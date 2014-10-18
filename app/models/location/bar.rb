class Location::Bar < Location
  def connections
    [:courtyard]
  end

  def describe(game)
    'Usuall bar, nothing specific.'
  end
end
