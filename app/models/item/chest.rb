class Item::Chest < Item
  attr_reader :open

  def initialize
    super
    @open = false
  end

  def unlock
  end

end
