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
   @game = Game.create(player_1, player_2)
   redirect to('/play')
 end

 get '/play' do
    @game = Game.instance
    erb(:play)
  end

  get '/attack1' do
    @game = Game.instance
    @game.attack(@game.player2)
    erb(:attack)
  end

  get '/attack2' do
    @game = Game.instance
    @game.attack(@game.player1)
    erb(:attack)
  end
end
