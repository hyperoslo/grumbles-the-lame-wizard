class Doodad::Sign < Doodad

  def describe
    if player.find :map
      'A useless sign.'
    else
      'A sign with a map attached to it.'
    end
  end

end
