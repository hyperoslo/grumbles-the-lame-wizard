class Interaction::HedgeStick < Interaction
  def merge(objects)
    stick = objects["stick"]
    hedge = objects["hedge"]

    if hedge.open.eql? true
      location = hedge.parent
      location.children.delete(hedge)
      "'Yol-Toor-Shul!' and <strong>opened_hedge</strong> burns to ash."
    else
      if stick.id.eql? :epic_wand
        hedge.open = true
        "The hedge opens, revealing the <strong>bank</strong>."
      else
        "My magic is too weak, I’ll need more power to open the hedge."
      end
    end

 end
end
