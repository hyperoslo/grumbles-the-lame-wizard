class Interaction::InnDoorInnKey < Interaction
  def merge(objects)
    inn_key = objects["inn_key"]
    player = inn_key.player
    if player.find :inn_key
      inn_door = objects["inn_door"]
      inn_key.move_node_to inn_door
      "The <strong>inn_key</strong> slides into the <strong>inn_door</strong> lock. I should try to <strong>UNLOCK</strong> it now."
    else
      "I don’t have the <strong>inn_key</strong> yet. Maybe I should <strong>SEARCH</strong> the <strong>room</strong>?"
    end
  end
end
