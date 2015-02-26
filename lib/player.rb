class Player
  attr_accessor :board
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def has_board?
    !@board.nil?
  end

  def receive_shot(coordinate)
    board.shoot_at(coordinate)
  end
end
