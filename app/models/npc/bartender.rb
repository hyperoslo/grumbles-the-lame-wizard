class NPC::Bartender < NPC
  def describe
    'He seems oddly quiet for a bartender.'
  end

  def talk_to
    <<-HTML
      <strong>bartender</strong>: Hnnngnhhhghnn....
      <strong>bartender</strong>: Could you keep it down? I’m hung-over.
    HTML
  end
end
