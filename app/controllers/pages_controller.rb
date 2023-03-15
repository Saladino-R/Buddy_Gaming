require "json"
require "open-uri"

class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
  end

  def friend_show
    @friend = User.find(params[:id])
    # @friendship_id = @friend.friendships.where(user_id: @friend.id).where(friend_id: current_user.id)
    @histories = @friend.user_games
    @message = Message.new

    chatrooms = Chatroom.where(user_id: current_user.id).where(friend_id: @friend.id)
    if chatrooms.empty?
      chatrooms = Chatroom.where(friend_id: current_user.id).where(user_id: @friend.id)
    end
    @chatroom = chatrooms.first
  end

  def dashboard
    @post = Post.new
    friends_posts = Post.all.where(user_id: current_user.friends)
    my_posts = Post.all.where(user_id: current_user.id)
    @all_posts = (friends_posts + my_posts)
    @requests = Friendship.where(friend_id: current_user.id).where(confirm: nil)
    # @received_friends_r = Friendship.where(friend_id: current_user.id).where(confirm: true)
    # @sent_friends_r = Friendship.where(user_id: current_user.id).where(confirm: true)
    # @friends_list = @received_friends_r +  @sent_friends_r

    # Historique de jeu
    @histories = current_user.user_games
    @game_details = @histories.map do |user_game|
      call_api(user_game.game_id)
    end
  end

  private

  def call_api(game_id)
    # Key site
    key = "df3a4995e8e94f67b87a44e1a692e9fd"
    # Site de l'api et lire le doc
    url = "https://api.rawg.io/api/games/#{game_id}?key=#{key}"
    games_serialized = URI.open(url).read
    # Parsing json de l'api
    games = JSON.parse(games_serialized)
  end
end
