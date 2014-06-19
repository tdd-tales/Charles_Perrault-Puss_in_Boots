require_relative '../tale/divide_inheritance'
require_relative '../tale/miller'
require_relative '../tale/son'

describe Tale::DivideInheritance do
  it 'runs the division' do
    miller = Tale::Miller.new
    the_eldest, the_second, the_youngest = miller.sons

    subject.run(miller.inheritance, miller.sons)

    expect(the_eldest.inheritance).to eq('mill')
    expect(the_second.inheritance).to eq('donkey')
    expect(the_youngest.inheritance).to eq('cat')
  end
end
