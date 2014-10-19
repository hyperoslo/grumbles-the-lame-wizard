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
      "I’ve never seen such a creature: a hypersonic <strong>sloth</strong>! With a crown on its head! But it oozes with dark magic."
    else
      "The <strong>princess</strong> is free from the dark curse! I should take her with me!"
    end
  end

  def pick_up
    gate = player.parent.find :castle_gate

    if gate.open.eql? true
      treasury = player.parent

      treasury.reset
    elsif self.cursed
      "Do I need a sloth? I have Bigglesworth-cat to feed."
    else
      self.move_node_to player
      "Now we can be together ’til the end of time. Let's <strong>hearthstone</strong> away from here."
    end
  end

  def talk_to
    if self.cursed
      '<strong>sloth</strong>: EEP. EEP. EEP.'
    elsif
      '<strong>princess</strong>: Grumbles, let’s go!'
    end
  end
end
