class Doodad::InnDoor < Doodad

  attr_reader :open

  def initialize
    super
    @open = false
  end

  def unlock
    if @open
      'I’ve already unlocked the door.'
    elsif self.find 'inn_key'
      @open = true
      'I swiftly unlock the inn door.'
    else
      'It\'s impossible to unlock this door without a key.'
    end
  end

  def describe
    'A very ordinary inn door.'
  end

end
