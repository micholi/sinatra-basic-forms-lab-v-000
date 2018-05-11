require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/NEW' do

  end

  post '/' do
    @name = params[:name]
    @breed = params[:breed]
    @age = params[:age]
    erb :create_puppy
    
  end

end
