class NPC::InsectHunters < NPC
  attr_accessor :active

  def initialize
    super
    @active = false
  end

  def pick_up
    if @active
      self.move_node_to player
      "That guys definetly can help me with insects from the church."
    else
      "I have no business to that gentlement"
    end
  end

end
