require_relative 'config/environment'


class App < Sinatra::Base
  
  #attr_accessor :session 
  
  configure do
  enable :sessions 
  set :session_secret, "secret"
  end


  
  get '/' do 
    erb :index
  end
  
  post'/checkout' do
    binding.pry
    @session = session
    @session["item"] = params["item"]
    erb :display_item
  end
end