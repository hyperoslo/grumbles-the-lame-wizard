class BaseEntity
  def find(what)
    return nil if what.nil?

    # TODO :: Actually find a child of this entity
    Wizard.new
  end
end
