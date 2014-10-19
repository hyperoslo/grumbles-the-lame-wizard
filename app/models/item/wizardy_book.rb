class Item::WizardyBook < Item
  def pick_up
    self.move_node_to player
    "Amazing wizardy book with ancient spell and recipes"
  end
end
