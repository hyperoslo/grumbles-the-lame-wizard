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

  def pick_up
    move_node_to player
    'Ah, my trusted stick.'
  end

  def describe
    if @epic
      'My amazeballs over 9000 stick. It’s magical and what not.'
    elsif @with_crystal
      'My trusted stick with a crystal socketed onto it.'
    else
      'My trusted stick. It has a socket at the end.'
    end
  end
end
