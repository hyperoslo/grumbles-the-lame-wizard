class Doodad::Hedge < Doodad
  attr_accessor :open

  def initialize
    super
    @open = false
  end

  def id
    if @open
      :opened_hedge
    else
      :hedge
    end
  end

  def describe
    if @open
      'The <strong>bank</strong> shows in all its glory through the <strong>opened_hedge</strong>.'
    else
      'I can see small glimpses of a bank through the tight <strong>hedge</strong>.'
    end
  end
end
