require_relative 'player'

class Game

  attr_reader :switch_player, :player_1, :player_2

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
    @switch_player = player_2
  end

  def player_1
    @player_1
  end

  def player_2
    @player_2
  end

  def attack(player)
    player.hit
  end

  def switch_turn
   if @switch_player == player_1
    @switch_player = player_2
   else
    @switch_player = player_1
   end
 end

end
