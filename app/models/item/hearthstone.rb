class Item::Hearthstone < Item
  def pick_up
    player.move_node_to game.find(:inn)
    if player.find :princess
      <<-HTML
      <strong>WOOOSSHH!</strong>

      And they lived happily ever after.

      Thanks for playing!

      - Peter Sergeev (@toothfairy)
      - Sindre Moen (@sindrenm)
      - Tim Kurvers (@timkurvers)
      HTML
    else
      '<strong>WOOOSSHH!</strong> I’m back at the <strong>inn</strong>.'
    end
  end

  def describe
    "Nothing is be better than home, sweet home. This <strong>hearthstone</strong> may <strong>GET</strong> me back to my lovely inn."
  end
end
