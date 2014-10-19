class Item::WizardyBook < Item
  def pick_up
    self.move_node_to player
    "An amazing <strong>wizardy_book</strong> with ancient spells and recipes."
  end

  def describe
    "An amazing <strong>wizardy_book</strong> with ancient spells and recipes."
  end
end
