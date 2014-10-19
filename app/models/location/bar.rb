class Location::Bar < Location
  def connections
    [:courtyard]
  end

  def describe
    'Usual bar, nothing specific.'
  end
end
