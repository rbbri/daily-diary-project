require './lib/database_connection'
if ENV['ENVIRONMENT'] == 'test'
  DatabaseConnection.setup('Diary_test')
else
  DatabaseConnection.setup('Diary')
end
