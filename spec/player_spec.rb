require 'player'

describe Player do
  let(:player) {described_class.new("Alex")}

  describe "#name" do
    it 'returns the player name' do
      expect(player.name).to eq("Alex")
    end
  end

  describe '#increase_LP' do
    it "adds 10 LP to the player's friend" do
      expect{player.increase_LP}.to change{player.LP}.by(Player::ADD_LP)
    end
  end

  describe '#help' do
    it "helps the player's friend" do
      expect(player).to receive(:increase_LP)
      player.help
    end
  end

end
