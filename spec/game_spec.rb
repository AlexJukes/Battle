require 'game'

describe Game do
  let(:player_2) {double :player_2}
  subject(:game) {described_class.new}
  let(:ten_LP) {10}

  describe '#help' do
    it 'adds 10 LP to a player' do
      expect{game.help(game.player_2)}.to change{game.player_2.LP}.by(ten_LP)
    end
  end
end
