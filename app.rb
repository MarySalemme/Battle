require 'sinatra/base'
require './lib/player.rb'

class Battle < Sinatra::Base

enable :sessions

 get '/' do
  'Hello Battle!'
  erb(:index)
 end

 post '/names' do
   $player1 = Player.new(params[:name1])
   $player2 = Player.new(params[:name2])
   redirect to('/play')
 end

 get '/play' do
    @player1_name = $player1.name
    @player2_name = $player2.name
    @player1_hitpoints = "60"
    @player2_hitpoints = "60"
    erb(:play)
  end

  get '/attack' do
    @player1_name = $player1.name
    @player2_name = $player2.name
    erb(:attack)
  end
end
