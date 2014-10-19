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
    self.id == id.to_sym
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
      " - <strong>#{child.id}</strong>"
    end.join '<br>'
  end

  def describe
    'Nothing to see here. Move along.'
  end

  def pick_up
    'I wouldn’t pick that up if I were you.'
  end

  def move_to
    'You try to move, but you can’t.'
  end

  def duplicate
    'Last I checked, pirating was illegal.'
  end

  def lock
    'Are you being paranoid?'
  end

  def unlock
    'You’re a wizard, not a lockpicker!'
  end

  def merge(other:)
    'Merging that doesn’t even make any sense.'
  end

  def talk_to
    'You report it, but nobody cares.'
  end

  def patch
    'You feel like you don’t need to patch this.'
  end
end
