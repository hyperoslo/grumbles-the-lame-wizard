class Item::InnKey < Item

  def pickup
    self.move_node_to player
    'The key is covered in grog'
  end

end
