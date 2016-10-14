require_relative 'player'

class Game

  def initialize(player_1, player_2)
    @players = [player_1, player_2]
    @switch_player = player_2
  end

  def player_1
    @players.first
  end

  def player_2
    @players.last
  end

  def attack(player)
    player.hit
  end

  def current_turn
    @players.first
  end

  def target
    @players.last
  end

  def switch_turn
    @players.reverse!
  end

end
