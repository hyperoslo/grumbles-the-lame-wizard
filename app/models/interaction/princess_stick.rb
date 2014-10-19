class Interaction::PrincessStick < Interaction
  def merge(objects)
    princess = objects["princess"]
    if princess.cursed
      princess.cursed = false
      "Poof! The <strong>sloth</strong> turns into a beautiful <strong>princess</strong>!"
    else
      "The <strong>princess</strong> is perfect, no spells could make her better."
    end
  end
end
