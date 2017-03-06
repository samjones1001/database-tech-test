require 'sinatra/base'

class DatabaseServer < Sinatra::Base
  get '/' do
    'Hello DatabaseServer!'
  end

  get '/get' do
    'get info'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
