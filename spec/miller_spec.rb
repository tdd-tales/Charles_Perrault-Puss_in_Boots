require_relative '../tale/miller'

describe Tale::Miller do
  it 'has own inheritance' do
    expect(subject.inheritance).to eq(['mill', 'donkey', 'cat'])
  end
end
