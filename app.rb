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
    selected_item = params["item"]
    @sessions[:item] = selected_item
    erb :checkout
  end
end