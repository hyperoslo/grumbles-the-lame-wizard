class Doodad::Sign < Doodad

  def describe
    if player.find :map
      'A useless <strong>sign</strong>.'
    else
      'A <strong>sign</strong> with a <strong>map</strong> attached to it.'
    end
  end

end
