
require 'Entry'
require 'pg'

describe Entry do
  subject(:entry) do
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

  describe '.all' do
      it 'returns a list of entries' do
        Entry.insert(title: entry.title, body: entry.body)
        entries = Entry.all
        entry = entries.first
        expect(entries.length).to eq 1
        expect(entry).to be_a Entry
        expect(entry).to respond_to(:id)
        expect(entry.title).to eq 'Test entry'
        expect(entry.body).to eq 'I hope this works'
      end
    end
  describe '.insert' do
    it 'inserts an entry' do
      Entry.insert(title: entry.title, body: entry.body)
      expect(Entry.all[0].title).to eq(entry.title)
    end
  end

end
