class Wizard < BaseEntity

  def references(game, id)
    return if id.nil?

    id = id.to_sym

    # Current location
    return parent if parent.is? id

    # Entities in the current location
    entity = parent.find id
    return entity if entity

    # Inventory items
    item = find id
    return item if item

    # Location connections
    if parent.connections.include? id
      game.find id
    end
  end

end
