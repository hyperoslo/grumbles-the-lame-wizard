class Item::Wine < Item
  def pick_up
    self.move_node_to player
    "I’m not an alcoholic anymore, but somebody else might be. I’ll take it."
  end

  def describe
    <<-HTML
      Chiteau Haut-Brion 1959, magnificent wine. I love French wine, like I love the French language.

      I have sampled every language, French is my favourite - fantastic language, especially to curse with.

      ’Nom de Dieu de putain de bordel de merde de saloperies de connards d'enculis de ta mire.’

      You see, it's like wiping your ass with silk, I love it.
    HTML
  end
end
