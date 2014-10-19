class NPC::ForgedDwarf < NPC
  attr_accessor :happy

  def initialize
    super
    @happy = false
  end

  def talk_to
    if @happy
      <<-HTML
        <strong>forged_dwarf</strong>: Thanks for the <strong>blacksmithing_book</strong>!
      HTML
    else
      <<-HTML
        <strong>forged_dwarf</strong>: How’re ya?
        <strong>forged_dwarf</strong>: I’m a bit low on blacksmithing supplies.
        <strong>forged_dwarf</strong>: Could you help out?
      HTML
    end
  end

end
