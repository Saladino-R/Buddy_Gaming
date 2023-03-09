Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "dashboard", to: "pages#dashboard"
  resources :user_games, only: %i[new create] do
    get "/results", to: "user_games#results"
    post "/friendships", to: "friendships#create"
  end
  resources :posts, only: [:create]
end
