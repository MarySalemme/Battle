require "game.rb"
require "player.rb"

describe Game do

  subject(:game) { described_class.new(player_1, player_2) }

  let(:player_1) { double :player }
  let(:player_2) { double :player }

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
    it "reduces the votes by ten" do
      allow(player_1).to receive(:reduce_points) { 50 }
      expect(game.attack(player_1)).to eq 50
    end
  end
end
