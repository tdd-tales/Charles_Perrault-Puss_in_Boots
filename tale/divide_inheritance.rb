module Tale
  class DivideInheritance
    def run(inheritance, sons)
      sons.each_with_index { |son, i| son.take(inheritance[i]) }
    end
  end
end
