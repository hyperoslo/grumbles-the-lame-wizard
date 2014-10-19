class Item::KeyBlueprint < Item
  def pick_up
    master_key = game.find_in_tree :master_key
    dwarf = game.find_in_tree :forged_dwarf

    if master_key.tried.eql? false
      "Why do I even need key blueprint"
    elsif dwarf.happy.eql? false
      "Dwarfs are known to be greedy. <strong>forged_dwarf</strong> won't give me the <strong>key_blueprint</strong>. Exchange is only hope."
    else
      self.move_node_to player
      "<strong>key_blueprint</strong> is mine! It's time to do some magick"
    end
  end
end
