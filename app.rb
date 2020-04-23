require_relative 'config/environment'


class App < Sinatra::Base
  
  attr_accessor :session 
  
  configure do
  enable :sessions 
  set :session_secret, "secret"
  end

  @session = session
  
  get '/' do 
    erb :index

  end
  
  post'/checkout' do
    @session["item"] = params["item"]
    erb :display_item
  end
end