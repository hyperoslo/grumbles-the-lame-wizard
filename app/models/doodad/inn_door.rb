class Doodad::InnDoor < Doodad

  attr_reader :open

  def initialize
    super
    @open = false
  end

  def unlock(game)
    if @open
      'You already unlocked the door'
    elsif self.find 'inn_key'
      @open = true
      'You unlock the door'
    else
      'You cannot unlock this door without a key'
    end
  end

end
