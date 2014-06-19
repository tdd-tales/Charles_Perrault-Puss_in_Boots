require_relative '../tale/son'

describe Tale::Son do
  subject { described_class.new('Leo') }

  it 'has got a name' do
    expect(subject.name).to eq('Leo')
  end

  it 'has no own inheritance' do
    expect(subject.inheritance).to be_nil
  end

  it 'takes an inheritance' do
    subject.take('treasure')
    expect(subject.inheritance).to eq('treasure')
  end
end
