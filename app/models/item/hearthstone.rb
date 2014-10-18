class Item::Hearthstone < Item

  def use(game)
    game.player.move_node_to game.find(:inn)
    'WOOOSSHH!'
  end

end
