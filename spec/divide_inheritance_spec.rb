require_relative '../tale/divide_inheritance'

describe Tale::DivideInheritance do
  it 'runs the division' do
    expect(subject.run('inheritance', 'sons')).to be_truthy
  end
end
