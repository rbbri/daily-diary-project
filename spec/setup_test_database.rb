require 'pg'

p "Setting up test database..."
connection = PG.connect(dbname: 'Diary_test')
connection.exec("TRUNCATE entries;")
