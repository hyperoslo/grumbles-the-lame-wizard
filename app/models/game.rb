class Game < BaseEntity
  def self.template
    Game.new do

      # Inn
      add_node Location::Inn.new {
        add_node Item::InnKey.new
        add_node Doodad::InnDoor.new
        add_node Item::Stick.new
        add_node Item::Shoes.new
        add_node Wizard.new {
          add_node Item::GameManual.new
          add_node Item::Letter.new
          add_node Item::Floppy.new
          add_node Item::Hearthstone.new
        }
      }

      # Courtyard
      add_node Location::Courtyard.new {
        add_node Doodad::Hedge.new
        add_node Doodad::Sign.new
        add_node Item::Map.new
      }

      # Bar
      add_node Location::Bar.new {
        add_node Item::Wine.new
        add_node NPC::Bartender.new
        add_node NPC::InsectHunters.new
        add_node Item::Crystal.new
      }

      # Church
      add_node Location::Church.new {
        add_node Doodad::Insects.new
      }

      # Library
      add_node Location::ChurchLibrary.new {
        add_node Item::WizardyBook.new
        add_node Item::BlacksmithingBook.new
        add_node Doodad::PreciousBook1.new
        add_node Doodad::PreciousBook2.new
      }

      # Forgery
      add_node Location::Forgery.new {
        add_node NPC::ForgedDwarf.new
        add_node Item::KeyBlueprint.new
        add_node Doodad::Forge.new
      }

      # Bank
      add_node Location::Bank.new {
        add_node NPC::Goblin.new
        add_node Doodad::GlassPane.new
        add_node Item::MasterKey.new
      }

      # RoadToCastle
      add_node Location::RoadToCastle.new {
        add_node NPC::NorwegianTroll.new
        add_node Doodad::River.new
      }

      # Castle Moat
      add_node Location::CastleEntrance.new {
        add_node NPC::Guard.new
      }

      # Castle Treasury
      add_node Location::Castle.new {
        add_node Doodad::CastleGate.new
        add_node Doodad::Vault.new
      }

    end
  end

  def reset
    self.children = self.class.template.children
  end
end
