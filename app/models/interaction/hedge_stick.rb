
class Interaction::HedgeStick < Interaction
  def merge(objects)
    stick = objects["stick"]
    hedge = objects["hedge"]

    if hedge.open.eql? true
      location = hedge.parent
      location.children.delete(hedge)
      "'Yol-Toor-Shul!' and hedge burns to ash."
    else
      if stick.id.eql? :epic_wand
        hedge.open = true
        "Hedge is opened, now I can get into the bank"
      else
        "My magic is to weak, I need more power to open the hedge"
      end
    end

 end
end
