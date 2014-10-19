class Item::BlacksmithingBook < Item
  def pick_up
    self.move_node_to player
    'Blacksmithing is not my best skill. No use for me, may be I can exchange it for something useful'
  end
end
