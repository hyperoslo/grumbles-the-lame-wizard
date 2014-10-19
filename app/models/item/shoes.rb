class Item::Shoes < Item
  attr_accessor :holy

  def initialize
    super
    @holy = false
  end

  def id
    if @holy
      :holy_shoes
    else
      :holey_shoes
    end
  end

  def patch
    location = self.player.parent
    if location.id.eql? :church
      self.holy = true
      "'e' goes away inspired by the sacred chants, there are <strong>holy_shoes</strong> in my bag, cheers!"
    else
      "Yor're perform sacred chants upon your shoes, but that doens't seem to work in <strong>#{location.id}</strong>"
    end
  end

  def put
  end
end
