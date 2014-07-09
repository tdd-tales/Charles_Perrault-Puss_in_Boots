require_relative 'son'

module Tale
  class Miller
    attr_reader :inheritance, :sons

    def initialize
      @inheritance = Inheritance.new(['mill', 2], ['donkey', 1], ['cat', 0])
      @sons = [Son.new('the eldest'), Son.new('the second'), Son.new('the youngest')]
    end
  end
end
