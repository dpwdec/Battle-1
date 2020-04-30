class Game

  attr_reader :player_1, :player_2, :current_player

  def initialize(player1, player2)
    @player_1 = player1
    @player_2 = player2
    @current_player = @player_1
  end

  def attack
    @current_player == @player_1 ? player_2.receive_damage : player_1.receive_damage
  end

  def switch_player
    @current_player = @current_player == @player_1 ? @player_2 : @player_1
  end
end
