require 'sinatra/base'
require './spec/support/database_helper'

class DailyDiary < Sinatra::Base
  get '/' do
    'Hello World'
  end

  run! if app_file == $PROGRAM_NAME
end
