require 'sinatra/base'

class DatabaseServer < Sinatra::Base
  set :port, 4000

  get '/' do
    'Hello DatabaseServer!'
  end

  get '/set' do
    'set info'
    @params = params
    erb :set
  end

  get '/get' do
    'get info'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
