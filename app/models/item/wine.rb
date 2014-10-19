class Item::Wine < Item
  def pick_up
    self.move_node_to player
    "I don't drink alcohol anymore, but it could be usefull"
  end
end
