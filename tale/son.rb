module Tale
  class Son
    def initialize(name)
      @name = name
      @inheritance = nil
    end

    attr_reader :name, :inheritance

    def take(inheritance)
      @inheritance = inheritance
    end
  end
end
