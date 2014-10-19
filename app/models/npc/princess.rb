class NPC::Princess < NPC
  attr_accessor :cursed

  def initialize
    super
    @cursed = true
  end

  def id
    if @cursed
      :sloth
    else
      :princess
    end
  end

  def describe
    if self.cursed
      "I've never seen such a creature, hypersonic sloth! But something weird in it's look, and I can feel presence of dark magic around it"
    else
      "Princess is free from dark course! Let me take you with me!"
    end
  end

  def pick_up
    gate = player.parent.find :castle_gate

    if gate.open.eql? true
      treasury = player.parent

      treasury.reset
    elsif self.cursed
      "Do I need a sloth? I have Bigglesworth-cat to feed"
    else
      self.move_node_to player
      "Now we can be together till the end of time. Let's and <strong>hearthstone</strong> away from here."
    end
  end
end
