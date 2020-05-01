class Game

  attr_reader :player_1, :player_2, :current_player

  @@current_game = nil

  def self.current_game
    @@current_game
  end

  def self.current_game=(current_game)
    @@current_game = current_game
  end

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
