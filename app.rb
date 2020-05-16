require 'sinatra/base'

class App < Sinatra::Base

  configure do
    enable :sessions
    set :session_secret, "56874198"
  end

  get '/' do
    erb :index
  end

  post '/checkout' do
    item = params[:item]
    session["item"] = item
    @session = session["item"]

    erb :display_item
  end

end
