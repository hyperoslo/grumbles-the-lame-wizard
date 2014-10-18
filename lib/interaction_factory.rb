class InteractionFactory
  attr_accessor :object
  attr_accessor :as_hash


  # args are objects, not symbols
  def initialize(*args)
    self.as_hash = args.each_with_object({}) do |obj, hsh|
      hsh[obj.class.name.demodulize.underscore] = obj
    end
    class_name = self.as_hash.keys.map(&:classify).join("")
    class_name = "Interaction::#{class_name}"
    self.object = Object.const_get(class_name).new
  end

  def perform(method)
    if object && object.respond_to?(method)
      object.send method, self.as_hash
    else
      "That objects can not be combined"
    end
  end

  def class_exists?(class_name)
    klass = Module.const_get(class_name)
    return klass.is_a?(Class)
      rescue NameError
    return false
  end
end
