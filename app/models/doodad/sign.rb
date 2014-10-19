class Doodad::Sign < Doodad

  def describe
    if player.find :map
      'A useless sign.'
    else
      'A sign with a <strong>map</strong> attached to it.'
    end
  end

end
