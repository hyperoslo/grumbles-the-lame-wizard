class Item::Stick < Item
  attr_accessor :with_crystal
  attr_accessor :epic

  def initialize
    super
    @with_crystal = false
    @epic = false
 end

  def id
    if @epic
      :epic_wand
    elsif @with_crystal
      :crystal_stick
    else
      :lame_stick
    end
  end

  def pickup
    move_node_to player
    'Ah, your trusted stick.'
  end
end
