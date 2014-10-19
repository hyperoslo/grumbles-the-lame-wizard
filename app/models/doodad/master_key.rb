class Doodad::MasterKey < Doodad
  attr_accessor :tried

  def initialize
    super
    @tried = false
  end

  def pick_up
    '<strong>master_key</strong> is behind <strong>glass_pane</strong>. Now way I can original one, goblin will catch me'
  end
end
