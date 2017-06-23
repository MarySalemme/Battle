require "game.rb"
require "player.rb"

describe Game do

  subject(:game) { described_class.new(player_1, player_2) }

  let(:player_1) { double :player }
  let(:player_2) { double :player }

  describe "#initialize" do
    it "is initiali with a turn set on one" do
      expect(game.turn).to eq 1
    end
  end

  describe "#player1" do
    it "returns the first player" do
      expect(game.player1).to eq player_1
    end
  end

  describe "#player2" do
    it "returns the second player" do
      expect(game.player2).to eq player_2
    end
  end

  describe "#attack" do
    it "is able to receive reduce_points method" do
      expect(player_2).to receive(:reduce_points)
      game.attack(player_2)
    end
  end

  describe "#switch_turn" do
    it "changes the turn from player 1 to player 2" do
      expect { game.switch_turn }.to change {game.turn}.to 2
    end
  end
end
