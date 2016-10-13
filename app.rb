require 'sinatra/base'
require_relative './lib/player'
require_relative './lib/game'

class Battle < Sinatra::Base

enable :sessions

  get '/' do
    'Hello Battle!'
    erb(:index)
  end

  post '/names' do
    $player_1 = Player.new(params[:player_1])
    $player_2 = Player.new(params[:player_2])
    redirect '/play'

  end

  get '/play' do
    @player_1 = $player_1.name
    @player_2 = $player_2.name
    @player_1_hp = $player_1.hit_points
    @player_2_hp = $player_2.hit_points
    erb (:play)
  end

  get '/attack' do
    @player_1 = $player_1.name
    @player_2 = $player_2.name
    Game.new.attack($player_2)
    erb (:attack)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
