class BaseEntity

  attr_accessor :parent
  attr_accessor :children

  def initialize(&block)
    @parent = nil
    @children = []

    instance_eval(&block) if block_given?
  end

  def id
    self.class.name.demodulize.underscore.to_sym
  end

  def is?(id)
    self == id || self.id == id.to_sym
  end

  def add_node(target)
    target.move_node_to self
  end

  def move_node_to(target)
    @parent.children.delete(self) if @parent
    @parent = target
    @parent.children << self
  end

  def find_in_tree(id)
    find(id, recursively: true)
  end

  def find(id, recursively: false)
    return if id.nil?

    children.find do |child|
      return child if child.is? id

      if recursively
        hit = child.find(id, recursively: recursively)
        return hit if hit
      end
    end
  end

  def game
    @game ||= begin
      entity = self
      entity = entity.parent while entity.parent
      entity
    end
  end

  def player
    game.find_in_tree :me
  end

  def list_entities
    children.map do |child|
      "<li><strong>#{child.id}</strong></li>"
    end.join.prepend("<ul>").concat("</ul>")
  end

  def search
    'I can’t search that.'
  end

  def pick_up
    'Nah, I don’t want to pick that up.'
  end

  def duplicate
    'Last I checked, pirating was illegal.'
  end

  def lock
    'I’m a wizard, not a locksmith!'
  end

  def unlock
    'I’re a wizard, not a lockpicker!'
  end

  def merge
    'Merge with what?'
  end

  def talk_to
    'Nobody’s listening to me!'
  end

  def patch
    'I don’t feel like patching this.'
  end

  def describe
    'Nothing to see here. Moving along.'
  end

  def drop
    'I don’t want to drop THAT.'
  end
end
