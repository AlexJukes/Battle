require 'player'

describe Player do
  let(:player) {described_class.new("Alex")}
  let(:player_2) {described_class.new("Jess")}

  describe "#name" do
    it 'returns the player name' do
      expect(player.name).to eq("Alex")
    end
  end

  describe '#receive_LP' do
    it "adds 10 LP to a player's LP when called via #help" do
      expect{player.receive_LP}.to change{player.LP}.by(Player::ADD_LP)
    end
  end

  describe '#help' do
    it "adds 10 LP to the player's friend" do
      expect{player.help(player_2)}.to change{player_2.LP}.by(Player::ADD_LP)
    end
  end

end
