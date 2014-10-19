class Interaction::InsectHunterInsect < Interaction
  def merge(objects)
    insects = objects["insects"]
    hunters = objects["insect_hunters"]

    player = hunters.player
    current_location = player.parent

    current_location.children.delete(insects)
    player.children.delete(hunters)

    <<-HTML
    The way to the <strong>church_library</strong> is now clear!

    <strong>insect_hunters</strong>: We’ll be on our way now, bye bye!
    HTML
  end
end
