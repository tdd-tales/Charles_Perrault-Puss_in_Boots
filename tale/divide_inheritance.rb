module Tale
  class DivideInheritance
    def run(inheritance, sons)
      sons.each { |son| son.take_the_most_valuable_from_inheritance(inheritance) }
    end
  end
end
