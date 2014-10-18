class Location < BaseEntity

  def connections
    []
  end

  def move_allowed?(target)
    true
  end

end
