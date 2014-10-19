class Location::Forgery < Location
  def connections
    [:courtyard]
  end

  def describe
    'It’s hot and magical here'
  end
end
