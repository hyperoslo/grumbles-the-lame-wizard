class Item::MasterKey < Doodad
  attr_accessor :tried

  def initialize
    super
    @tried = false
  end

  def pick_up
    @tried = true
    'The <strong>master_key</strong> is behind <strong>glass_pane</strong>. The goblin won’t allow me anywhere near the original one.'
  end

  def duplicate
    player = self.player
    blueprint = player.find :key_blueprint
    if blueprint
      player.children.delete(blueprint)

      key = Item::MasterKey.new
      key.move_node_to player

      "Not the original - but still fully functional - <strong>master_key</strong>. Locks await!"
    else
      "To perform this spell I need something to make a copy of <strong>master_key</strong>. What could it be? A <strong>frog</strong>, a <strong>banana</strong>?"
    end
  end

  def describe
    if parent == player
      "Not the original - but still fully functional - <strong>master_key</strong>. Locks await!"
    else
      "A fabulously shiny master key well protected behind a glass pane."
    end
  end
end
