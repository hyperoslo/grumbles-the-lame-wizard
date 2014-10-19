class Item::Crystal < Item
  def pick_up
    self.move_node_to player
    "What a crystal! It's so shiny, maybe it's even magical!"
  end

  def describe
    "It's flourless."
  end
end
