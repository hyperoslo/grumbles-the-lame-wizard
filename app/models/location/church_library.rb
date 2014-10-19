class Location::ChurchLibrary < Location
  def connections
    [:church]
  end

  def describe
    'Books books'
  end
end
