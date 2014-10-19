class Doodad::MasterKey < Doodad
  attr_accessor :tried

  def initialize
    super
    @tried = false
  end

  def pick_up
    @tried = true
    '<strong>master_key</strong> is behind <strong>glass_pane</strong>. No way I can original one, goblin will catch me'
  end
end
