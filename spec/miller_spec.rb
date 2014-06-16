require_relative '../tale/miller'

describe Tale::Miller do
  it 'has own inheritance' do
    expect(subject.inheritance).to eq(['mill', 'donkey', 'cat'])
  end

  it 'has got three sons' do
    expect(subject.sons).to eq(['the first', 'the second', 'the third'])
  end
end
