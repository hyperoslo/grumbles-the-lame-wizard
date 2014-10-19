class NPC::Guard < NPC
  attr_accessor :drunk

  def initialize
    super
    @drunk = false
  end

  def describe
    if @drunk
      "Drunk as a lord, pff.. weakling. I can drink twice as much!"
    else
      'The <strong>guard</strong> watches the <strong>castle</strong> grounds 24/7.'
    end
  end

  def talk_to
    <<-HTML
      <strong>me</strong>: LOOK! A three-headed monkey!
      <strong>guard</strong>: Wrong game bro.
    HTML
  end
end
