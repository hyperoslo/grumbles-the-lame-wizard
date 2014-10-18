class BaseEntity

  attr_accessor :parent
  attr_accessor :children

  def initialize(&block)
    @parent = nil
    @children = []

    instance_eval(&block) if block_given?
  end

  def ids
    [ self.class.name.demodulize.downcase.to_sym ]
  end

  def add_node(target)
    target.move_node_to self
  end

  def move_node_to(target)
    @parent.children.remove(self) if @parent
    @parent = target
    @parent.children << self
  end

  def find_in_tree(id)
    find(id, recursively: true)
  end

  def find(id, recursively: false)
    return nil if id.nil?

    id = id.to_sym

    children.find do |child|
      return child if child.ids.include? id

      if recursively
        hit = child.find(id, recursively: recursively)
        return hit if hit
      end
    end
  end

  def describe(game:)
    'Nothing to see here. Move along.'
  end

  def pickup(game:)
    'I wouldn’t pick that up if I were you.'
  end

  def move(game:)
    'You try to move, but you can’t.'
  end

  def copy(game:)
    'Last I checked, pirating was illegal.'
  end

  def lock(game:)
    'Are you being paranoid?'
  end

  def unlock(game:)
    'You’re a wizard, not a lockpicker!'
  end

  def merge(game:, other:)
    'Merging that doesn’t even make any sense.'
  end

  def report(game:)
    'You report it, but nobody cares.'
  end

  def patch(game:)
    'You feel like you don’t need to patch this.'
  end
end