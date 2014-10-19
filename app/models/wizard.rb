class Wizard < BaseEntity

  def id
    :me
  end

  alias_method :current_location, :parent

  def describe
    "You are Grumbles the lame Wizard standing in the <strong>#{current_location.id}</strong>"
  end

  def search
    "You are currently carrying:<br><br>#{list_entities}"
  end

  def references(id)
    return if id.nil?

    id = id.to_sym

    # Current location
    return current_location if current_location.is? id

    # Entities in the current location
    entity = current_location.find id
    return entity if entity

    # Inventory items
    item = find id
    return item if item

    # Location connections
    if current_location.connects_to? id
      game.find id
    end
  end

end
