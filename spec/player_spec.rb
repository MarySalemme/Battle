require 'player'

describe Player do

  subject(:player) { described_class.new("Tom") }

  describe '#name' do
    it 'prints put the name of the player' do
      expect(player.name).to eq "Tom"
    end
  end
end
