class Game < BaseEntity

  def self.template
    Game.new do

      # Inn
      add_node Location::Inn.new {
        add_node Item::InnKey.new
        add_node Doodad::InnDoor.new
        add_node Wizard.new {
          add_node Item::Shoes.new
          add_node Item::Stick.new
          add_node Item::Hearthstone.new
        }
      }

      # Courtyard
      add_node Location::Courtyard.new {
        add_node Doodad::HolyFountain.new
        add_node Doodad::Hedge.new
      }

    end
  end

end
