require_relative 'config/environment'

class App < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/new' do
    @name=params[:name]
    @age=params[:age]
    @breed=params[:breed]
    erb :display_puppy
  end

  get '/new' do
    erb :create_puppy
  end

end
