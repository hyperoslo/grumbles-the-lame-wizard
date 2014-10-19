class Interaction::GuardWine < Interaction
  def merge(objects)
    guard = objects["guard"]
    guard.drunk = true
    "Even strongest of us can't resist a sip of fine wine. Hic!"
  end
end
