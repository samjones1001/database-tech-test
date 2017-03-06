require 'sinatra/base'
require 'sinatra/base'
require 'sinatra/flash'
require_relative 'models/fake_db'

class DatabaseServer < Sinatra::Base
  register Sinatra::Flash
  set :port, 4000
  enable :sessions

  get '/' do
  end

  get '/set' do
    session[:storage] = FakeDb.new
    @params = request.env['rack.request.query_hash']
    session[:storage].create(@params.keys, @params.values)
    erb :set
  end

  get '/get' do
    if session[:storage] && session[:storage].storage.include?([request.query_string])
      @output = session[:storage].storage.values
      erb :get
    else
      flash.now[:notice] = 'that data item does not exist'
      erb :get
    end
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
