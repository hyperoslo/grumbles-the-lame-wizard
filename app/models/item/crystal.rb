class Item::Crystal < Item
  def pick_up
    self.move_node_to player
    "What a <strong>crystal</strong>! It’s so shiny, maybe it’s even magical!"
  end

  def describe
    "It’s flawless."
  end
end
