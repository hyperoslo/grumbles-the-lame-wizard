class Item::InnKey < Item

  def pickup(game)
    self.move_node_to game.player
    'The key is covered in grog'
  end

end
