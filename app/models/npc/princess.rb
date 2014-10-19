class NPC::Princess < NPC
  attr_reader :cursed

  def initialize
    super
    @cursed = false
  end

  def id
    if @cursed
      :sloth
    else
      :princess
    end
  end
end
