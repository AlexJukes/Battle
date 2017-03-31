require 'player'
class Game

  attr_reader :player_1, :player_2

  def initialize(player_name_1, player_name_2)
    @player_1 = Player.new(player_name_1)
    @player_2 = Player.new(player_name_2)
  end

  def help(player)
    player.receive_LP
  end

end
