class Location::Castle < Location
  def connections
    [:castle_entrance]
  end

  def reset
    guard = game.find_in_tree :guard
    guard.drunk = false

    courtyard = game.find :courtyard
    player.move_node_to courtyard

    "Aii, the <strong>guard</strong> came and kicked me out of the castle onto the <strong>courtyard</strong>. Happiness was so close.."
  end

  def move_player_to(next_location)
    current_location = self

    # TODO: Figure out whether you should be able to leave after opening the vault
    if player.find :princess
      "I think it's not the best idea to leave the <strong>castle</strong>. The <strong>guard</strong> will catch us."
    else
      super
    end
  end

  def describe
    'It’s a castle.'
  end
end
