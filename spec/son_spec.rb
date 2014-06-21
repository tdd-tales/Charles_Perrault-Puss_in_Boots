require_relative '../tale/son'

describe Tale::Son do
  subject { described_class.new('Leo') }

  it 'has got a name' do
    expect(subject.name).to eq('Leo')
  end

  it 'has no own inheritance' do
    expect(subject.inheritance).to be_nil
  end

  it 'takes the most valuable from an inheritance' do
    inheritance = [['table', 0], ['chair', 0], ['treasure', 1]]
    subject.take_the_most_valuable_from_inheritance(inheritance)

    expect(subject.inheritance).to eq('treasure')
    expect(inheritance).to eq([['table', 0], ['chair', 0]])
  end
end
