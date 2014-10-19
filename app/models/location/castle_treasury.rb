class Location::CastleTreasury < Location
  def connections
    [:castle_moat]
  end

  def describe
    'Beautiful princess and chest full of gold, what could be better?'
  end

  def reset
    guard = game.find_in_tree :guard
    guard.drunk = false


    courtyard = game.find :courtyard
    player.move_node_to courtyard

    "<strong>guard</strong> came and kicked me away from the castle. Happiness was so close.."
  end
end
