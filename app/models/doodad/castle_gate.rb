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
    if player.find(:princess) || player.parent.find(:princess)
      "It’s not the best idea to open <strong>castle_gate</strong> now. <strong>guard</strong> will catch and punish me for sneaking in."
    else
      @open = true
      describe
    end
  end

  def describe
    if @open
      "The gate is opened. The <strong>guard</strong> could sober up anytime, though."
    else
      # TODO: Add hint
      # princess = game.find_in_tree(:princess) || game.find_in_tree(:sloth)
      "Nobody can get in. I'm tête-à -tête with my destiny."
    end
  end
end
