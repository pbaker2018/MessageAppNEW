require 'sinatra/base'
require './lib/message'

class MessageApp < Sinatra::Base

  set :sessions, true

  get '/' do
    if session[:messages].nil?
      session[:messages] = []
    end
    @messages = session[:messages]
    erb :index
  end

  post '/temp' do
    message = Message.new(params[:message])
    session[:messages] << message
    redirect '/'
  end

run! if app_file == $0

end
