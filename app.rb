require_relative 'config/environment'

class App < Sinatra::Base
  
  configure do
    enable :sessions unless test?
    set :session_secret, "item"
  end
  
  get '/' do
  erb :index
  end
  
  post '/checkout' do
    @session = session
    item = params["item"]
    @sessions[:item] = item
    erb :checkout
  end
end