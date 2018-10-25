require 'pg'

class Entry

  attr_reader :id, :title, :body

  def initialize(id: nil, title: nil, body: nil)
    @id = id
    @title = title
    @body = body
  end

  def self.insert(title:, body:)
    entry = DatabaseConnection.query("INSERT INTO entries (title, body)
      VALUES ('#{title}', '#{body}')
      RETURNING id, title, body;")
    Entry.new(id: entry[0]['id'], title: entry[0]['title'], body: entry[0]['body'])
  end

  def self.all
    entries = DatabaseConnection.query('SELECT * FROM entries;')
    entries.map do |entry|
      Entry.new(
        id: entry['id'],
        title: entry['title'],
        body: entry['body']
      )
    end
  end
end
