class Doodad::Hedge < Doodad
  attr_accessor :open

  def initialize
    super
    @open = false
  end

  def id
    if @open
      :opened_hedge
    else
      :hedge
    end
  end
end
