require 'sinatra/base'

class DailyDiary < Sinatra::Base
  get '/' do
    'Hello World'
  end

  run! if app_file == $PROGRAM_NAME
end
