class Item::Floppy < Item

  def describe
    <<-HTML
      Contains my game state.

      <strong>DELETE</strong> the floppy to reset the game.
    HTML
  end

  def drop
    game.reset
    <<-HTML
    Goodbye cruel world! Hello World!

    I’m back at the <strong>inn</strong>.
    HTML
  end

end
