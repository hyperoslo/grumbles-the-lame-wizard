class InteractionFactory
  attr_accessor :object
  attr_accessor :as_hash

  def initialize(*args)
    self.as_hash = args.each_with_object({}) do |obj, hsh|
      hsh[obj.class.name.demodulize.underscore] = obj
    end
    class_name = self.as_hash.keys.sort.map(&:classify).join("")
    class_name = "::Interaction::#{class_name}"
    @object = class_name.constantize.new rescue nil
  end

  def perform(method)
    if object && object.respond_to?(method)
      object.send method, self.as_hash
    else
      'Those objects can not be combined.'
    end
  end
end
