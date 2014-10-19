class Location < BaseEntity

  def connections
    []
  end

  def connects_to?(entity)
    id = if entity.is_a? Location
           entity.id
         else
           entity
         end
    connections.include? id
  end

  def list_connections
    connections.map do |connection|
      "<li><strong>#{connection}</strong></li>"
    end.join.prepend("<ul>").concat("</ul>")
  end

  def search
    <<-HTML
      In the <strong>#{id}</strong>, I can see:

      #{list_entities}

      The <strong>#{id}</strong> connects to:

      #{list_connections}
    HTML
  end

  def move_player_to(next_location)
    player.move_node_to(next_location)
    "I’m in <strong>#{next_location.id}</strong> now."
  end

end
