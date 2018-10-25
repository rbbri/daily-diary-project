require 'Diary'
require 'Entry'
require 'pg'

describe Diary do
  let(:entry) do
    double :entry,
           id: '1',
           title: 'Test entry',
           body: 'I hope this works',
           comment: nil,
           tag: nil
  end
  describe '.all' do
      it 'returns a list of entries' do
        Diary.insert(entry)
        entries = Diary.all
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
      Diary.insert(entry)
      expect(Diary.all[0].title).to eq(entry.title)
    end
  end
end
