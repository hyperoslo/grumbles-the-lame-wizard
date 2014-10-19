class Item::InnKey < Item

  def describe
    if parent == player
      'An ordinary inn door key, covered in grog.'
    else
      'An ordinary inn door key, ready for the taking.'
    end
  end

  def pick_up
    self.move_node_to player
    <<-HTML
      Ew, grog all over it! The key must have been abused by its previous owner.

      I’ve placed the <strong>#{id}</strong> in my inventory.
    HTML
  end

end
