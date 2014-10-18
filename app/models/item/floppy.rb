class Item::Floppy < Item

  def drop
    game.reset
    'Everything’s lost.'
  end

end
