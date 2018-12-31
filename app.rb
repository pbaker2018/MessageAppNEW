require 'sinatra/base'
require './lib/message'
require 'sinatra/activerecord'

class MessageApp < Sinatra::Base
  register Sinatra::ActiveRecordExtension

  get '/' do
    @messages = Message.all
    erb :index
  end

  post '/temp' do
    Message.create(content: params[:message]) # content is the column in the table it will be assigned to
     # params[:message] is the text submitted in the form
    redirect '/'
  end

run! if app_file == $0

end
