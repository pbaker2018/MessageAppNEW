require 'sinatra/base'
require './lib/message'

class MessageApp < Sinatra::Base

  enable :sessions

  get '/' do
   @message = session[:message]
   erb :index
  end

  post '/temp' do
    p session[:message] = Message.new(params[:message])
    redirect '/'
  end

run! if app_file == $0

end
