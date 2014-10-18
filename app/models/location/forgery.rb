class Location::Forgery < Location
  def connections
    [:courtyard]
  end

  def describe(game)
    'It\' hot and magical here'
  end
end
