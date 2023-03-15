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
    previous_user_games = UserGame.where(user_id: current_user.id).where(game_params)
    unless previous_user_games.empty?
      previous_user_games.destroy_all
    end
    if user_game.save
      redirect_to user_game_results_path(user_game.id)
    else
      # flash[:notice] = "You already have this game choice in your #{view_context.link_to 'game history', dashboard_path}".html_safe

      redirect_to new_user_game_path, notice: "Your choice is invalid. Please try again"
    end
  end

  def results
    # @friendships = Friendship.all
    @friendship = Friendship.new
    @user_games = UserGame.all
    @my_choice = UserGame.find(params[:user_game_id])
    match = @user_games.where(game_id: @my_choice.game_id).where(language: @my_choice.language).where(level: @my_choice.level).where(mode: @my_choice.mode).where(mood: @my_choice.mood).where(console: @my_choice.console)
    @matches = match.where.not(user_id: current_user.id)
    @my_previous_matches = match.where(user_id: current_user.id)

    # Rejecting an array of the matches profiles to whom I've already sent a friend request
    # so I don't dispaly them again in the results.html.erb
    @filter_matches = @matches.reject do |m|
      current_user.friends.include?(m.user) || current_user.friendships.pluck(:friend_id).include?(m.user_id)
      #in the friendships array, I select(".pluck") the matches where the user_id = the friend_id, and i put them in a new array
    end
  end

  private

  def set_user
    @user = current_user.id
  end

  def game_params
    params.require(:user_game).permit(:language, :level, :mood, :mode, :console, :game_id)
  end

  def call_api
    # Key site
    key = "df3a4995e8e94f67b87a44e1a692e9fd"
    # Site de l'api et lire le doc
    url = "https://api.rawg.io/api/games?key=#{key}"
    games_serialized = URI.open(url).read
    # Parsing json de l'api
    JSON.parse(games_serialized)
  end
end
