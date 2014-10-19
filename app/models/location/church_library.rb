class Location::ChurchLibrary < Location
  def connections
    [:church]
  end

  def describe
    'Piles of books. EVERYWHERE.'
  end
end
