class Item::MasterKey < Doodad
  attr_accessor :tried

  def initialize
    super
    @tried = false
  end

  def pick_up
    @tried = true
    '<strong>master_key</strong> is behind <strong>glass_pane</strong>. No way I can original one, goblin will catch me up in no time'
  end

  def duplicate
    player = self.player
    blueprint = player.find :key_blueprint
    if blueprint
      player.children.delete(blueprint)
      player.children << Item::MasterKey.new
      "Not original but yet useful <strong>master_key</strong>, chests await"
    else
      "To perform that spell I need some object to make a copy of <strong>master_key</strong>. What could be it? <strong>frog</strong>, <strong>banana</strong>?"
    end
  end
end
