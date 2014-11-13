require 'sinatra/base'
require_relative 'player'
require_relative 'game'

class BattleShip < Sinatra::Base

  GAME = Game.new

  set :views, Proc.new { File.join(root, "..", "views") }

  get '/' do
    erb :index
  end

  get '/new_game' do
    erb :new_game
  end

  get '/starting' do
    @name = GAME.players[0].name
    @name2 = GAME.players[1].name
    erb :starting
  end

  post '/starting' do
    player = Player.new(params[:name])
    GAME.add(player)
    @name = GAME.players[0].name
    @name2 = player.name if params[:name] && GAME.players.count == 2
    erb :starting
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
