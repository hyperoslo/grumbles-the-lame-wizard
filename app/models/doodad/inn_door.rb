class Doodad::InnDoor < Doodad

  attr_reader :open

  def initialize
    super
    @open = false
  end

  def unlock
    if @open
      'You already unlocked the door'
    elsif self.find 'inn_key'
      @open = true
      'You unlocked the door'
    else
      'It\'s not way to unlock this door without a key'
    end
  end

  def describe
    'A very ordinary inn door.'
  end

end
