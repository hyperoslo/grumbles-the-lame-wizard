class Item::InnKey < Item

  def pick_up
    self.move_node_to player
    'The key is covered in grog'
  end

end
