Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # root "articles#index"

  get "dashboard", to: "pages#dashboard"

  get "/friend/:id", to: "pages#friend_show", as: "friend"

  delete "/friend/:id", to: "friendships#destroy", as: "delete_friend"

  resources :pages, only: %i[dashboard friend_show destroy]

  resources :user_games, only: %i[new create] do
    get "/results", to: "user_games#results"
    post "/friendships", to: "friendships#create"
  end
  resources :posts, only: %i[create destroy]
  resources :friendships, only: %i[update]

  resources :chatrooms, only: %i[show index new] do
    resources :messages, only: :create
  end

end
