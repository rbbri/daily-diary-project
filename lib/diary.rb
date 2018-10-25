require 'pg'
require 'database_connection'
require 'entry'

class Diary
  attr_accessor :db

  def self.insert(entry)
    DatabaseConnection.query("INSERT INTO entries (title, body, comment, tag)
      VALUES (
        '#{entry.title}',
        '#{entry.body}',
        '#{entry.comment}',
        '#{entry.tag}')
      ;")
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
