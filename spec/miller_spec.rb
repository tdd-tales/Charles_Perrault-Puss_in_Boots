require_relative '../tale/miller'
require_relative '../tale/son'

describe Tale::Miller do
  it 'has own inheritance' do
    expect(subject.inheritance).to eq(['mill', 'donkey', 'cat'])
  end

  it 'has got three sons' do
    sons_names = ['the eldest', 'the second', 'the youngest']
    expect(subject.sons.map(&:name)).to eq(sons_names)
  end
end
