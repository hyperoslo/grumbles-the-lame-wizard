class Location::Castle < Location
  def connections
    [:castle_entrance]
  end

  def reset
    guard = game.find_in_tree :guard
    guard.drunk = false


    courtyard = game.find :courtyard
    player.move_node_to courtyard

    "<strong>guard</strong> came and kicked me away from the castle. Happiness was so close.."
  end

  def move_player_to(next_location)
    current_location = self

    if player.find :princess
      "I think it's not the best idea to open <strong>castle_gate</strong>. <strong>guard</strong> will catch us and put use in a <strong>vault</strong>"
    else
      player.move_node_to(next_location)
      "Woohoo, you moved to #{next_location.id}"
    end
  end
end
