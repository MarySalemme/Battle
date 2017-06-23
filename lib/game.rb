require "./lib/player.rb"

class Game

  attr_reader :turn

  def self.create(player1, player2)
    @game = Game.new(player1, player2)
  end

  def self.instance
    @game
  end

  def initialize(player1, player2)
    @players = [player1, player2]
    @turn = 1
  end

  def player1
    @players.first
  end

  def player2
    @players.last
  end

  def attack(player)
    player.reduce_points
    switch_turn
  end

  def switch_turn
    if @turn == 1
      @turn = 2
    else
      @turn = 1
    end
  end
end
