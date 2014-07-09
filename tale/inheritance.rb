module Tale
  class Inheritance
    attr_reader :items
    protected :items

    def initialize(*items)
      @items = Set.new(items)
    end

    def ==(other)
      items == other.items
    end

    def empty?
      items.empty?
    end

    def valuable?
      items.any? { |item| item.last.nonzero? }
    end

    def the_most_valuable
      items.max_by(&:last)
    end

    def take_the_most_valuable
      if the_most_valuable.nil?
        self.class.new
      else
        item = the_most_valuable
        items.delete(item)
        self.class.new(item)
      end
    end
  end
end
