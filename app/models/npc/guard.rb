class NPC::Guard < NPC
  attr_accessor :drunk

  def initialize
    super
    @drunk = false
  end

  def describe
    if @drunk
      "Drunk as a lord, pff.. weekling. I can drink twice as much!"
    else
      '<strong>guard</strong> watches castle entrance 24/7. No entrance for pleb wizards.'
    end
  end
end
