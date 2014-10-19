class Item::Hearthstone < Item
  def pick_up
    player.move_node_to game.find(:inn)
    if player.find :princess
      'WOOOSSHH! And they lived happily ever after. Final subtitles'
    else
      'WOOOSSHH!'
    end
  end
end
