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
    session = {}
    session["item"] = item
    @session = session.value

    erb :display_item
  end

end
