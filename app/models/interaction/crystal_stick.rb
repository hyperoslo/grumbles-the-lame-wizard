class Interaction::CrystalStick < Interaction
  def merge(objects)
    stick = objects["stick"]
    crystal = objects["crystal"]
    player = stick.player

    stick.with_crystal = true

    player.children.delete(crystal)

    "Now my stick isn't lame stick, but it's still not powerfull enought for big magic"
  end
end
