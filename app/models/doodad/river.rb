class Doodad::River < Doodad
  attr_reader :with_boots

  def initialize
    super
    @with_boots = false
  end

  def describe
    'The river bridge is guarded by a Norwegian troll. There has to be some righteous way past it.'
  end

end
