class Item::Vault < Item
  attr_reader :open

  def initialize
    super
    @open = false
  end

  def unlock
    gate = game.find_in_tree :castle_gate
    master_key = self.find :master_key

    if gate.open.eql? true
      treasury = player.parent

      treasury.reset
    elsif master_key.nil?
      "Vault requires master key, where can I find it?"
    else
      castle = self.parent
      castle.children << NPC::Princess.new
      castle.children.delete(self)
    end
  end

  def pick_up
    gate = game.find_in_tree :castle_gate

    if gate.open.eql? true
      treasury = player.parent

      treasury.reset
    else
      self.move_node_to player
      "Heavy but nice"
    end
  end

  def id
    if @open
      :gold
    else
      :chest
    end
  end

end
