class Doodad::CastleGate < Doodad
  attr_reader :open

  def initialize
    super
    @open = false
  end

  def lock
  end

  def describe
    'The castle gate is what shields the treasury from the outside world.'
  end
end
