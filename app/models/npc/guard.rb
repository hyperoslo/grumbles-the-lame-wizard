class NPC::Guard < NPC
  attr_reader :drunk

  def initialize
    super
    @drunk = false
  end
end
