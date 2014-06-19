module Tale
  class Miller
    def inheritance
      ['mill', 'donkey', 'cat']
    end

    def sons
      @sons ||= [ Son.new('the eldest'),
                  Son.new('the second'),
                  Son.new('the youngest') ]
    end
  end
end
