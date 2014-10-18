class Location::Bank < Location
  def connections
    [:courtyard]
  end

  def describe(game)
    'That goblins probably drive Bentley'
  end
end
