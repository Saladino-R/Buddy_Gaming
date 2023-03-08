require "json"
require "open-uri"

class UserGamesController < ApplicationController
  before_action :set_user, only: %i[new create]

  def new
    @user_game = UserGame.new
    @games = call_api["results"]
  end

  def create
    @user_game = UserGame.new(game_params)
    @user_game.user_id = current_user.id
    @user_game.save
    # redirect_to results_path(@user_game)
  end

  def results
  end

  private

  def set_user
    @user = current_user.id
  end

  def game_params
    params.require(:user_game).permit(:language, :level, :mood, :mode, :console, :user_id, :game_id)
  end

  def call_api
    # Key site
    key = "df3a4995e8e94f67b87a44e1a692e9fd"
    # Site de l'api et lire le doc
    url = "https://api.rawg.io/api/games?key=#{key}"
    games_serialized = URI.open(url).read
    # Parsing json de l'api
    games = JSON.parse(games_serialized)
  end
end
