class Item::Hearthstone < Item

  def use
    player.move_node_to game.find(:inn)
    'WOOOSSHH!'
  end

end
