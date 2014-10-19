class Doodad::CastleGate < Doodad
  attr_reader :open

  def initialize
    super
    @open = false
  end

  def lock
  end
end
