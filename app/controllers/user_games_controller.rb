require "json"
require "open-uri"

class UserGamesController < ApplicationController
  before_action :set_user, only: %i[new create]

  def new
    @user_game = UserGame.new
    @games = call_api["results"]
  end

  def create
    user_game = UserGame.new(game_params)
    user_game.user_id = current_user.id
    user_game.save
    redirect_to user_game_results_path(user_game.id)
  end

  def results
    @user_games = UserGame.all
    #  my_games = UserGame.where(user_id: current_user.id)
    #  others_games = @user_games - my_games
     my_choice = UserGame.find(params[:user_game_id])
     match = @user_games.where(game_id: my_choice.game_id).where(language: my_choice.language).where(level: my_choice.level).where(mode: my_choice.mode).where(mood: my_choice.mood).where(console: my_choice.console)
     @matches = match.where.not(user_id: current_user.id)

    # @user_games.each do |game|
    #   my_user_game = game.user_id == current_user.id
    #   if game.console == my_user_game.console
    #   raise
    #   end
    # end
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
