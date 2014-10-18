class Location < BaseEntity

  def connections
    []
  end

  def connects_to?(id)
    connections.include? id
  end

  def move_allowed?(target)
    true
  end

end
