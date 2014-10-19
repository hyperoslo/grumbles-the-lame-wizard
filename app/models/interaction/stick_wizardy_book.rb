class Interaction::StickWizardyBook < Interaction
  def merge(objects)
    stick = objects["stick"]
    wizardy_book = objects["wizardy_book"]
    player = stick.player

    if stick.with_crystal
      player.children.delete(wizardy_book)
      stick.epic = true
      "Wow, such <strong>epic_wand</strong>, very wizardy, many power, I like."
    else
      "My <strong>stick</strong> is too lame to unleash such a powerful spell on it."
    end
  end
end
