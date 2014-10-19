class NPC::InsectHunters < NPC
  attr_reader :active

  def initialize
    super
    @active false
  end

end
