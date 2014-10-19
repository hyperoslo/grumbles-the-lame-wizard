class Doodad::InnDoor < Doodad

  attr_reader :open

  def initialize
    super
    @open = false
  end

  def unlock
    if @open
      'I’ve already unlocked the <strong>inn_door</strong>.'
    elsif self.find 'inn_key'
      @open = true
      'I swiftly unlock the <strong>inn_door</strong>. The <strong>courtyard</strong> appears.'
    else
      'It’s impossible to unlock this door without an <strong>inn_key</strong>.'
    end
  end

  def describe
    'A very ordinary <strong>inn_door</strong>.'
  end

end
