class Interaction::PrincessStick < Interaction
  def merge(objects)
    princess = objects["princess"]
    if princess.cursed
      princess.cursed = false
      "Poof! <strong>sloth</strong> turns to <strong>princess</strong>!"
    else
      "That princess is perferc, no spells could make here better."
    end
  end
end
