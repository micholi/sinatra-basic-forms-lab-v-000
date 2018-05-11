require_relative 'config/environment'
require_relative 'create_puppy.erb'

class App < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/NEW' do
    erb :create_puppy
  end

  post '/' do
    @name = params[:name]
    @breed = params[:breed]
    @age = params[:age]

    erb :display_puppy
  end

end
