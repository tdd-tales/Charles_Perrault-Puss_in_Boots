module Tale
  class Son
    def initialize(name)
      @name = name
      @inheritance = []
    end

    attr_reader :name, :inheritance

    def take_the_most_valuable_from_inheritance(inheritance)
      the_most_valuable = inheritance.max_by(&:last)
      @inheritance = inheritance.delete(the_most_valuable)
    end
  end
end
