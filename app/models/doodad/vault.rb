class Doodad::Vault < Doodad
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
      "Vault requires <strong>master_key</strong>, where can I find it?"
    else
      castle = self.parent
      castle.children.delete(self)
      princess = NPC::Princess.new
      princess.move_node_to castle
      "Vault opens, from shadow appears ... <strong>sloth</strong>"
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
end
