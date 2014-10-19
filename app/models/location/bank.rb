class Location::Bank < Location
  def connections
    [:courtyard]
  end

  def describe
    'The goblins running the <strong>bank</strong> probably drive Bentleys. Bling!'
  end
end
