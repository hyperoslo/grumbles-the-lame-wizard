class Interaction::BlacksmithingBookForgedDwarf < Interaction
  def merge(objects)
    dwarf = objects["forged_dwarf"]
    book = objects["blacksmithing_book"]

    player = book.player
    player.children.delete(book)
    dwarf.happy = true

    "<strong>forged_dwarf</strong> is so happy now, I've never seen so happy dwarfs"
 end
end
