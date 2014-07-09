require_relative '../tale/son'

describe Tale::Son do
  describe '#initialize' do
    let(:son) { described_class.new('Lion') }

    it 'sets a name' do
      expect(son.name).to eq('Lion')
    end

    it 'sets an empty inheritance' do
      expect(son.inheritance).to be_an_instance_of(Tale::Inheritance)
      expect(son.inheritance).to be_empty
    end
  end

  describe '#take_the_most_valuable_from_inheritance' do
    let(:son) { described_class.new('Puma') }
    let(:inheritance) { Tale::Inheritance.new(['sand', 0], ['treasure', 1]) }

    it 'sets a new inheritance with the most valuable item' do
      son.take_the_most_valuable_from_inheritance(inheritance)
      expect(son.inheritance).to eq(Tale::Inheritance.new(['treasure', 1]))
    end
  end

  describe '#comfortless?' do
    let(:son) { described_class.new('Tiger') }
    let(:inheritance) { double }

    before { allow(son).to receive(:inheritance).and_return(inheritance) }

    it 'returns true when its inheritance is not valuable' do
      allow(inheritance).to receive(:valuable?).and_return(false)
      expect(son).to be_comfortless
    end

    it 'returns false when its inheritance is valuable' do
      allow(inheritance).to receive(:valuable?).and_return(true)
      expect(son).not_to be_comfortless
    end
  end
end
