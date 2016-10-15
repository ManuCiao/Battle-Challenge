require 'sinatra/base'
require_relative './lib/player'
require_relative './lib/game'

class Battle < Sinatra::Base

  before do
    @game = Game.instance
  end

  get '/' do
    erb(:index)
  end

  post '/names' do
    @game = Game.start(params[:player_1], params[:player_2])
    redirect '/play'
  end

  get '/play' do
    erb(:play)
  end

  post '/attack_outcome' do
    @game.attack(@game.target)
    @game.loser ? (redirect '/game_over') : (redirect '/attack')
  end

  get '/attack' do
    erb (:attack)
  end

  post '/switch' do
    @game.switch_turn
    redirect '/play'
  end

  get '/game_over' do
    erb :game_over
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
