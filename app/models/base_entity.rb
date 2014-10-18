class BaseEntity
  def find(what)
    return nil if what.nil?

    # TODO :: Actually find a child of this entity
    Wizard.new
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
