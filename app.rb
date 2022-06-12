require 'sinatra/base'
require 'sinatra/reloader'

class Battle < Sinatra::Base
  enable :sessions
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb :index
  end

  # submit the form to post '/names'
  # extract the submitted names from the params into the session
  # redirect to get '/play'
  # extract the names from the session to instance variables
  post '/names' do
    session[:player_1_name] = params[:player_1_name]
    session[:player_2_name] = params[:player_2_name]
    p session[:player_1_name]
    redirect '/play'
  end

  get '/play' do
    p session[:player_1_name]
    @player_1_name = session[:player_1_name]
    @player_2_name = session[:player_2_name]
    p @player_1_name
    p @player_2_name
    erb :play
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end