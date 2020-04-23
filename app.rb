require_relative 'config/environment'

class App < Sinatra::Base
  configure do
  enable :sessions 
  set :session_secret, "secret"
  end

  get '/' do 
    erb :index
    @session = session
  end
  
  post'/checkout' do
    @session["item"] = params["item"]
    erb :view
  end
end