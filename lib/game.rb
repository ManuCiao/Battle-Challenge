require_relative 'player'

class Game

  def self.start(player_1, player_2) # to call it we need to write Game.start("Xplayer","Yplayer")
    @game = Game.new(player_1, player_2) # @instance variables is only accessible to other class method that starts with self.
  end

  def self.instance # create a class instance variable to store our game
    @game #@game is class instance var
  end

  DEATH_POINTS = 0

  def initialize(player_1, player_2)
    @players = [Player.new(player_1), Player.new(player_2)]
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
    @target = @players.last
  end

  def switch_turn
    @players.reverse!
  end

  def loser
    @target if @target.hit_points == 0
  end

end
