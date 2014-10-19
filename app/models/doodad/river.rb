class Doodad::River < Doodad
  attr_reader :with_boots

  def initialize
    super
    @with_boots = false
  end

end
