class Interaction::CrystalStick < Interaction
  def merge(objects)
    stick = objects["stick"]
    crystal = objects["crystal"]
    player = stick.player

    stick.with_crystal = true

    player.children.delete(crystal)

    <<-HTML
    AHA! A <strong>crystal_stick</strong>!

    It’s no longer lame, but still not at its full power.
    HTML
  end
end
