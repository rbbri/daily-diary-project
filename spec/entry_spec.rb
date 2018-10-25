require 'entry'

describe Entry do
  let(:entry) do
    described_class.new(
      id: '1',
      title: 'Test entry',
      body: 'I hope this works'
    )
  end

  it 'has an id' do
    expect(entry.id).to eq '1'
  end

  it 'has a title' do
    expect(entry.title).to eq 'Test entry'
  end

  it 'has a body' do
    expect(entry.body).to eq 'I hope this works'
  end
end
