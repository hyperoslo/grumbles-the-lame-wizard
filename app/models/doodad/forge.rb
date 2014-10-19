class Doodad::Forge < Doodad
  def describe
    'The forge is glowing red hot while its steam reaches for the chimneys.'
  end

  def pick_up
    "<strong>forged_dwarf</strong>: Get yer filthy hands of m’forge, laddy!"
  end
end
