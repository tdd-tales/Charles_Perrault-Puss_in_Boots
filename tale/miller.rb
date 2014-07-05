require_relative 'son'

module Tale
  class Miller
    def initialize
      @sons = [Son.new('the eldest'), Son.new('the second'), Son.new('the youngest')]
      @inheritance = [['mill', 2], ['donkey', 1], ['cat', 0]]
    end

    attr_reader :inheritance, :sons
  end
end
