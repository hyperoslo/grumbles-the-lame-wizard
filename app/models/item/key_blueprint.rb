class Item::KeyBlueprint < Item
  def pick_up
    master_key = game.find_in_tree :master_key
    dwarf = game.find_in_tree :forged_dwarf

    if master_key.tried.eql? false
      "Why would I need a key blueprint?"
    elsif dwarf.happy.eql? false
      <<-HTML
      Dwarves are known to be greedy. <strong>forged_dwarf</strong> won’t give me the <strong>key_blueprint</strong>.

      I might need to give him something in exchange.
      HTML
    else
      self.move_node_to player
      "<strong>key_blueprint</strong> is mine!"
    end
  end

  def describe
    "It’s a blueprint for a key."
  end
end
