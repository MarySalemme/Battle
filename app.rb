require 'sinatra/base'

class Battle < Sinatra::Base

 get '/' do
   'Hello Battle!'
   'test infrastructure works!'
   erb(:index)
 end

 get '/names' do
   erb(:play)
 end
end
