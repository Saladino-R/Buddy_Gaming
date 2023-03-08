Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
<<<<<<< HEAD
  resources :user_games, only: %i[new create]
=======
  get "dashboard", to: "pages#dashboard"
  resources :posts, only: [:create]



>>>>>>> master
end
