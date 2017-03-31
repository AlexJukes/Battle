require 'player'
class Game

  attr_reader :player_2

  def initialize
    @player_2 = Player.new("Jess")
  end

  def help(player)
    player.receive_LP
  end

end
