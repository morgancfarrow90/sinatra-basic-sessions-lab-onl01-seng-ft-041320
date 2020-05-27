require_relative 'config/environment'

class App < Sinatra::Base
  
  configure do
    enable :sessions unless test?
    set :session_secret, "secret"
  end
  
  get '/' do
  erb :index
  end

end