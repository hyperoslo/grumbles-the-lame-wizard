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
      'The bank shows in all its glory through the open hedge.'
    else
      'I can see small glimpses of a bank through the tight hedge.'
    end
  end
end
