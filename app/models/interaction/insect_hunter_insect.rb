class Interaction::InsectHunterInsect < Interaction
  def merge(objects)
    insects = objects["insects"]
    hunters = objects["insect_hunters"]

    player = hunters.player
    current_location = player.parent

    current_location.children.delete(insects)
    player.children.delete(hunters)

    "Way to the <strong>church_library</strong> is clear!"
 end
end
