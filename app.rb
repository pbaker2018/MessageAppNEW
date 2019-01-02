require 'sinatra/base'
require './lib/message'
require 'sinatra/activerecord'

class MessageApp < Sinatra::Base
  register Sinatra::ActiveRecordExtension

  get '/' do
    @messages = Message.all
    erb :index
  end

  get '/messages/:message_id' do
    @message = Message.find(params[:message_id])
    erb :show
  end

  get '/delete/:message_id' do
    Message.destroy(params[:message_id])
    redirect '/'
  end

  post '/temp' do
    Message.create(content: params[:message], name: params[:name])
    redirect '/'
  end

  run! if app_file == $PROGRAM_NAME
end
