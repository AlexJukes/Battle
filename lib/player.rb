class Player

  attr_reader :name, :LP

  INITIAL_LP = 1
  ADD_LP = 10

  def initialize(name)
    @name = name
    @LP = INITIAL_LP
  end

  def receive_LP
    self.LP += ADD_LP
  end

  def help(player)
    player.receive_LP
  end

  private
  attr_writer :LP
end
