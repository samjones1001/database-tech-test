require 'sinatra/base'

class DatabaseServer < Sinatra::Base
  set :port, 4000
  enable :sessions

  get '/' do
    'Hello DatabaseServer!'
  end

  get '/set' do
    @params = request.env['rack.request.query_hash']
    session[:storage] = @params
    erb :set
  end

  get '/get' do
    erb :get
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
