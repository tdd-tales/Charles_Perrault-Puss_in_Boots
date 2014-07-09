require_relative '../tale/divide_inheritance'
require_relative '../tale/miller'

describe Tale::DivideInheritance do
  describe '#run' do
    let(:divide_inheritance) { described_class.new }

    it 'divides an inheritance between sons' do
      miller = Tale::Miller.new
      the_eldest, the_second, the_youngest = miller.sons

      divide_inheritance.run(miller.inheritance, miller.sons)

      expect(the_eldest.inheritance).to eq(Tale::Inheritance.new(['mill', 2]))
      expect(the_second.inheritance).to eq(Tale::Inheritance.new(['donkey', 1]))
      expect(the_youngest.inheritance).to eq(Tale::Inheritance.new(['cat', 0]))
    end
  end
end
