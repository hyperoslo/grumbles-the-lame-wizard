class Location::Bank < Location
  def connections
    [:courtyard]
  end

  def describe
    'That goblins probably drive Bentley'
  end
end
