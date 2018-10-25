require 'sinatra/base'
require './spec/support/database_helper'

class DailyDiary < Sinatra::Base
  get '/' do
    erb :index
  end

  get '/entries/new' do
    erb :add
  end

  run! if app_file == $PROGRAM_NAME
end
