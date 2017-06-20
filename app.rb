require 'sinatra/base'

class Battle < Sinatra::Base

enable :sessions

 get '/' do
   'Hello Battle!'
   'test infrastructure works!'
   erb(:index)
 end

 post '/names' do
   session[:name1] = params[:name_one]
   session[:name2] = params[:name_two]
   redirect to('/play')
 end

 get '/play' do
   @name1 = session[:name1]
   @name2 = session[:name2]
   erb(:play)
 end
end
