module Tale
  class Miller
    def initialize
      @sons = [ Son.new('the eldest'),
                Son.new('the second'),
                Son.new('the youngest') ]
    end

    attr_reader :sons

    def inheritance
      ['mill', 'donkey', 'cat']
    end
  end
end
