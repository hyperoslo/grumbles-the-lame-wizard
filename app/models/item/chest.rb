class Item::Chest < Item
  attr_reader :open

  def initialize
    super
    @open = false
  end

  def unlock
    gate = game.find_in_tree :castle_gate

    if gate.open.eql? true
      treasury = player.parent

      treasury.reset
    else
      master_key = player.find :master_key
      player.children.delete(master_key)

      @open = true
      "Many <strong>gold</strong> conins. It's enough to buy 9000 wizard hats"
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
