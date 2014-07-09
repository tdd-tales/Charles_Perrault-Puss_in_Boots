require_relative '../tale/inheritance'

describe Tale::Inheritance do
  describe '#==' do
    let(:inheritance) { described_class.new('stick', 'bud', 'leaf') }

    it 'returns true when sets of items are equal' do
      expect(inheritance).to eq(described_class.new('bud', 'leaf', 'stick'))
    end

    it 'returns false when sets of items are not equal' do
      expect(inheritance).not_to eq(described_class.new('stick', 'rind', 'bud'))
    end
  end

  describe '#empty?' do
    it 'returns true when a set of items is empty' do
      inheritance = described_class.new
      expect(inheritance).to be_empty
    end

    it 'returns false when a set of items is not empty' do
      inheritance = described_class.new('box')
      expect(inheritance).not_to be_empty
    end
  end

  describe '#valuable?' do
    it 'returns true when any item is valuable' do
      inheritance = described_class.new(['zero', 0], ['one', 1])
      expect(inheritance).to be_valuable
    end

    it 'returns false when all items are not valuable' do
      inheritance = described_class.new(['zero', 0], ['zero', 0])
      expect(inheritance).not_to be_valuable
    end
  end

  describe '#the_most_valuable' do
    it 'returns nil when itself is empty' do
      inheritance = described_class.new
      expect(inheritance.the_most_valuable).to be_nil
    end

    it 'returns the most valuable item' do
      inheritance = described_class.new(['lime', 1], ['melon', 2])
      expect(inheritance.the_most_valuable).to eq(['melon', 2])
    end
  end

  describe '#take_the_most_valuable' do
    it 'returns a new empty inheritance when the most valuable item is nil' do
      inheritance = described_class.new
      expect(inheritance.take_the_most_valuable).to eq(described_class.new)
    end

    it 'returns a new inheritance with the most valuable item' do
      inheritance = described_class.new(['tomato', 3], ['cucumber', 2])
      expect(inheritance.take_the_most_valuable).to eq(described_class.new(['tomato', 3]))
    end

    it 'removes the most valuable item from itself' do
      inheritance = described_class.new(['orange', 1], ['tangerine', 2])
      inheritance.take_the_most_valuable
      expect(inheritance).to eq(described_class.new(['orange', 1]))
    end
  end
end
