class Game < BaseEntity
  def self.template
    Game.new do

      # Inn
      add_node Location::Inn.new {
        add_node Item::InnKey.new
        add_node Doodad::InnDoor.new
        add_node Wizard.new {
          add_node Item::Floppy.new
          add_node Item::Shoes.new
          add_node Item::Stick.new
          add_node Item::Hearthstone.new
        }
      }

      # Courtyard
      add_node Location::Courtyard.new {
        add_node Doodad::Hedge.new
        add_node Doodad::Sign.new
      }

      # Bar
      add_node Location::Bar.new {
        add_node Item::Wine.new
        add_node Doodad::Bartender.new
        add_node Doodad::InsectHunters.new
        add_node Item::Crystal.new
      }

      # LibraryEntrance
      add_node Location::Church.new {
        add_node Doodad::Insects.new
      }

      # Library
      add_node Location::ChurchLibrary.new {
        add_node Item::WizardyBook.new
        add_node Item::BlacksmithingBook.new
      }

      # Forgery
      add_node Location::Forgery.new {
        add_node Doodad::ForgedDwarf.new
        add_node Item::KeyBlueprint.new
        add_node Doodad::Forge.new
      }

      # Bank
      add_node Location::Bank.new {
        add_node Doodad::Goblin.new
        add_node Doodad::GlassPane.new
        add_node Doodad::MasterKey.new
      }

      # RoadToCastle
      add_node Location::RoadToCastle.new {
        add_node Doodad::NorwegianTroll.new
        add_node Doodad::River.new
      }

      # Castle Moat
      add_node Location::CastleMoat.new {
        add_node Doodad::Guard.new
        add_node Doodad::CastleGate.new
      }

      # Castle Treasury
      add_node Location::CastleTreasury.new {
        add_node Doodad::CastleGateFromInside.new
        add_node Item::Chest.new
        add_node Item::Princess.new
      }

    end
  end

  def reset
    self.children = self.class.template.children
  end
end
