class Location::Bank < Location
  def connections
    [:courtyard]
  end

  def describe
    'The goblins running the bank probably drive Bentleys. Bling!'
  end
end
