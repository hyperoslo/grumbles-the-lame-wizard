class Item::Stick < Item
  attr_reader :with_crystal
  attr_reader :epic

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
end
