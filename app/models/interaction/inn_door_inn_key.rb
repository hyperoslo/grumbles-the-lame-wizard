class Interaction::InnDoorInnKey < Interaction
  def merge(objects)
    inn_key = objects["inn_key"]
    player = inn_key.player
    if player.find :inn_key
      inn_door = objects["inn_door"]
      inn_key.move_node_to inn_door
      "The key is now in the door lock. I should try and unlock the door now."
    else
      "I don’t have the key yet. Maybe I should search the room?"
    end
  end
end
