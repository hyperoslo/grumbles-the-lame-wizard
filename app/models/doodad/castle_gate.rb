class Doodad::CastleGate < Doodad
  attr_accessor :open

  def initialize
    super
    @open = true
  end

  def lock
    @open = false
    describe
  end

  def unlock
    if player.find :princess
      "I think it's not the best idea to open <strong>castle_gate</strong>. <strong>guard</strong> will catch us and put use in a <strong>vault</strong>"
    else
      @open = true
      describe
    end
  end

  def describe
    if @open
      "The gate is opened, guard can sober and come anytime."
    else
      princess = game.find_in_tree(:princess) || game.find_in_tree(:sloth)
      "Nobody can get in. I'm tete-a-tete with you, my lovely #{princess.id}"
    end
  end

  def describe
    'The castle gate is what shields the treasury from the outside world.'
  end
end
