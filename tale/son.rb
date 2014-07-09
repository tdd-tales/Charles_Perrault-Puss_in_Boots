require_relative 'inheritance'

module Tale
  class Son
    attr_reader :name, :inheritance

    def initialize(name)
      @name = name
      @inheritance = Inheritance.new
    end

    def take_the_most_valuable_from_inheritance(inheritance)
      @inheritance = inheritance.take_the_most_valuable
    end

    def comfortless?
      not inheritance.valuable?
    end
  end
end
