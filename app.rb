require 'sinatra/base'
require './lib/player.rb'
require './lib/game.rb'

class Battle < Sinatra::Base

enable :sessions, :logging

 get '/' do
  'Hello Battle!'
  erb(:index)
 end

 post '/names' do
   player_1 = Player.new(params[:player1])
   player_2 = Player.new(params[:player2])
   $game = Game.new(player_1, player_2)
   redirect to('/play')
 end

 get '/play' do
    @game = $game
    erb(:play)
  end

  get '/attack' do
    @game = $game
    p @game.player1
    @game.attack(@game.player2)
    erb(:attack)
  end
end
