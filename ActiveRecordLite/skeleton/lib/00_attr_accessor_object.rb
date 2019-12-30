require 'byebug'
class AttrAccessorObject
  
  def self.my_attr_accessor(*names)
    names.each do |name| # => name is color currently
      define_method(name) do
        # debugger
        instance_variable_get("@#{name}") #literally "@color"

      end
      define_method("#{name}=") do |value|
        instance_variable_set("@#{name}", value)
      end

    end

  end
end
