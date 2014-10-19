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
      "Sacred chants scared the ’e’ out of ’holey’. There are <strong>holy_shoes</strong> in my bag now, cheers!"
    else
      "I perform sacred chants on my <strong>holey_shoes</strong>, but it doesn't seem to work in the <strong>#{location.id}</strong>."
    end
  end

  def put
    location = self.player.parent
    if self.holy == false
      "I can’t wear them while they’re full of holes."
    else
      if location.id.eql? :road_to_castle
        self.player.in_shoes = true
        "Holy fucking shoes, I can walk on the water!"
      else
        "I’m quite comfortable without shoes, why would I put them on?"
      end
    end
  end

  def pick_up
    move_node_to player
    "Ah, my trusted <strong>holey_shoes</strong>. Seriously, I should get them repaired."
  end

  def describe
    if self.holy
      "Holy fucking shoes!"
    else
      "My trusted <strong>holey_shoes</strong>. Seriously, I should get them repaired."
    end
  end
end
