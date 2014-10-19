class NPC::InsectHunters < NPC
  attr_accessor :active

  def initialize
    super
    @active = false
  end

  def describe
    'They look like ghost-busters for, you know, <strong>insects</strong>.'
  end

  def pick_up
    if @active
      self.move_node_to player
      "Great! These guys are joining to help me out with the <strong>insects</strong> in the <strong>church</strong>."
    else
      "I have no business with these gentlemen."
    end
  end

  def talk_to
    if @active
      "<strong>insect_hunters</strong>: Oh, <strong>insects</strong> you say? TAKE US, say we. We’ll help."
    else
      "<strong>insect_hunters</strong>: You wouldn’t happen to have any business for us?"
    end
  end

end
