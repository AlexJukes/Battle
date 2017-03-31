require 'game'

describe Game do
  let(:player_1) {double :player, LP => 1}
  subject(:game) {described_class.new("Alex", "Jess")}
  let(:ten_LP) {10}

  describe '#help' do
    context "when created with players Alex and Jess" do
      # allow(game).to receive(:player_2).and_return(player)
      it 'adds LP to a player' do
        fake_player = double("Player", :receive_LP => 10)
        expect(fake_player).to receive(:receive_LP)
        game.help(fake_player)
      end
    end
  end
end
