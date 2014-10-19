class Doodad::Sign < Doodad

  def describe
    if player.find :map
      'A useless sign.'
    else
      'A sign with a map dangling from it.'
    end
  end

end
