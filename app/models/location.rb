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
      " - <strong>#{connection}</strong>"
    end.join "\n"
  end

  def search
    <<-HTML
      You look around the <strong>#{id}</strong>, seeing:

      #{list_entities}

      The <strong>#{id}</strong> connects to:

      #{list_connections}
    HTML
  end

end
