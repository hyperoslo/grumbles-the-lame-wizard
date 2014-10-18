class Location::Library < Location
  def connections
    [:library_entrance]
  end

  def describe(game)
    'Books books'
  end
end
