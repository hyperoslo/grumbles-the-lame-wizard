class Location::Library < Location
  def connections
    [:library_entrance]
  end

  def describe
    'Books books'
  end
end
