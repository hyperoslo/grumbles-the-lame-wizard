class Item::Floppy < Item

  def describe
    <<-HTML
      Contains your savegame file.<br>
      <strong>DELETE</strong> the floppy to reset your game
    HTML
  end

  def drop
    game.reset
    'Everything’s lost.'
  end

end
