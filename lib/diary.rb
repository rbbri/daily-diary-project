require 'pg'

class Diary
  def self.all
    connection = if ENV['ENVIRONMENT'] == 'test'
                   PG.connect(dbname: 'Diary_test')
                 else
                   PG.connect(dbname: 'Diary')
               end
    connection.exec('SELECT title FROM entries;')
  end
end
