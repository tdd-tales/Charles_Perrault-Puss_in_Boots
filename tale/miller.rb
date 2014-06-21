module Tale
  class Miller
    def initialize
      @sons = [ Son.new('the eldest'),
                Son.new('the second'),
                Son.new('the youngest') ]
    end

    attr_reader :sons

    def inheritance
      [['mill', 2], ['donkey', 1], ['cat', 0]]
    end
  end
end
