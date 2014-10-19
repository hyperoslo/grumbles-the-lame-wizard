class Location::Forgery < Location
  def connections
    [:courtyard]
  end

  def describe
    'It’s extremely hot and steamy in here.'
  end
end
