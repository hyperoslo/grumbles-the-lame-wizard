class NPC::ForgedDwarf < NPC
  attr_accessor :happy

  def initialize
    super
    @happy = false
  end
end
