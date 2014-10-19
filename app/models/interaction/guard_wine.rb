class Interaction::GuardWine < Interaction
  def merge(objects)
    guard = objects["guard"]
    guard.drunk = true
    <<-HTML
    Even the schtrongescht.. of usch.. can’t reschischt.. a schip of fine wine. HIC!

    The <strong>guard</strong> is knocked off his socks.
    HTML
  end
end
