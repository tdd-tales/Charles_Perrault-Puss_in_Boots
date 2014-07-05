require_relative 'tale/miller'
require_relative 'tale/divide_inheritance'

module Tale
  def self.start
    miller = Miller.new

    divide_inheritance = DivideInheritance.new
    divide_inheritance.run(miller.inheritance, miller.sons)
  end
end
