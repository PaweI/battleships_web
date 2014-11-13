class Game 

  attr_reader :players

  def initialize
    @players = []
  end

  def add(player)
    @players << player
  end
end