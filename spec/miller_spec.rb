require_relative '../tale/miller'
require_relative '../tale/son'

describe Tale::Miller do
  it 'has own inheritance' do
    expect(subject.inheritance).to eq([['mill', 2], ['donkey', 1], ['cat', 0]])
  end

  it 'has got three sons' do
    sons_names = ['the eldest', 'the second', 'the youngest']
    expect(subject.sons.map(&:name)).to eq(sons_names)
  end
end
