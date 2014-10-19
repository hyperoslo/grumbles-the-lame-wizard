class Interaction::PrincessStick < Interaction
  def merge(objects)
    princess = objects["princess"]
    if princess.cursed
      princess.cursed = false
      "Poof! Sloth turns to princess!"
    else
      "That princess is perferc, no spells could make here better"
    end
  end
end
