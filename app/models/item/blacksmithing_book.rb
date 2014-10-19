class Item::BlacksmithingBook < Item
  def pick_up
    self.move_node_to player
    'Blacksmithing is not my best skill. Maybe someone else has a use for it?'
  end

  def describe
    'Blacksmithing is not my best skill. Maybe someone else has a use for it?'
  end
end
