require 'player'

describe Player do

  subject(:player) { described_class.new("Tom") }

  describe "#initialize" do
    it "is initialised with 60 HP" do
      expect(player.hit_points).to eq 60
    end
  end

  describe '#name' do
    it 'prints put the name of the player' do
      expect(player.name).to eq "Tom"
    end
  end

  describe "#reduce_points" do
    it "reduces thepoints by 10" do
      player.reduce_points
      expect(player.hit_points).to eq 50
    end
  end
end
