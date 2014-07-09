require_relative '../tale/miller'

describe Tale::Miller do
  describe '#initialize' do
    let(:miller) { described_class.new }

    it 'sets the inheritance' do
      inheritance = Tale::Inheritance.new(['mill', 2], ['donkey', 1], ['cat', 0])
      expect(miller.inheritance).to eq(inheritance)
    end

    it 'sets the sons' do
      miller.sons.each { |son| expect(son).to be_an_instance_of(Tale::Son) }
      expect(miller.sons.map(&:name)).to eq(['the eldest', 'the second', 'the youngest'])
    end
  end
end
