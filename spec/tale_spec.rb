require_relative '../tale'

describe Tale do
  it 'starts the tale' do
    expect(subject.start).to be_truthy
  end
end
