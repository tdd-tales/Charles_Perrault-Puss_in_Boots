module Tale
  class Son
    attr_reader :name, :inheritance

    def initialize(name)
      @name = name
      @inheritance = []
    end

    def take_the_most_valuable_from_inheritance(inheritance)
      the_most_valuable = inheritance.max_by(&:last)
      @inheritance = inheritance.delete(the_most_valuable)
    end
  end
end
