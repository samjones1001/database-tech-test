require 'sinatra/base'
require 'sinatra/base'
require 'sinatra/flash'

class DatabaseServer < Sinatra::Base
  register Sinatra::Flash
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
    # if !session[:storage].keys.include?(request.query_string)
    #   flash.now[:notice] = 'hi!'
    erb :get
    end

  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
