require 'sinatra/base'

class MessageApp < Sinatra::Base

  enable :sessions

  get '/' do
   p @message = session[:message]
   erb :index
  end

  post '/temp' do
    session[:message] = params[:message]
    redirect '/'
  end

run! if app_file == $0

end
