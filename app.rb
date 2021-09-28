require 'sinatra/base'

class ROCK_PAPER_SCISSORS < Sinatra::Base
  enable :sessions
  
  get '/' do
    erb :index
  end

  post '/name' do
    session[:name] = params[:name]
    redirect '/play'
  end

  get '/play' do
    @name = session[:name]
    @tool = session[:tool]
    erb :play
  end

  post '/play' do
    session[:tool] = params[:tool]
    redirect '/play'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end