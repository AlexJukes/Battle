require 'player'

describe Player do
  let(:player) {described_class.new("Alex")}

  describe "#name" do
    it 'returns the player name' do
      expect(player.name).to eq("Alex")
    end
  end


end