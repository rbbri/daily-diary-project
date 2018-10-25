require 'sinatra/base'
require './spec/support/database_helper'
require './lib/entry.rb'

class DailyDiary < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/entries/new' do
    erb :add
  end

  post '/entries' do
    Entry.insert(title: params[:title], body: params[:body])
    redirect '/entries'
  end

  get '/entries' do
    @entries = Entry.all
    erb :entries
  end

end
