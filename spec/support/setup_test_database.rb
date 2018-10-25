require 'pg'
def setup_test_database
  connection = PG.connect(dbname: 'Diary_test')
  connection.exec('TRUNCATE entries;')
end
