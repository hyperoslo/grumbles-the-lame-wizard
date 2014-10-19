class Interaction::StickWizardyBook < Interaction
  def merge(objects)
    stick = objects["stick"]
    wizardy_book = objects["wizardy_book"]
    player = stick.player

    if stick.with_crystal
      player.children.delete(wizardy_book)
      stick.epic = true
      "Wow, so <strong>epic_wand</strong>, very wizardy, much power, like"
    else
      "My stick is too lame to apply so powerfull spells on it"
    end
  end
end
