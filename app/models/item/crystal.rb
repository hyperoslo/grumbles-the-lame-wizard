class Item::Crystal < Item
  def pick_up
    self.move_node_to player
    "What a crystal! It's so shiny, may be it's even magical!"
  end
end
