class Interaction::BlacksmithingBookForgedDwarf < Interaction
  def merge(objects)
    dwarf = objects["forged_dwarf"]
    book = objects["blacksmithing_book"]

    player = book.player
    player.children.delete(book)
    dwarf.happy = true

    "The <strong>forged_dwarf</strong> is super happy now. Never seen anything quite like it."
 end
end
