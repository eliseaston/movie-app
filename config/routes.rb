 Rails.application.routes.draw do
  resources :genres
  root "movies#index"

  resources :movies do
    resources :reviews
    resources :favourites, only: %i[create destroy]
  end

  get "movies/filter/:filter" => "movies#index", as: :filtered_movies

  resource :session, only: %i[new create destroy]
    get "signin" => "sessions#new"

  resources :users
  get "signup" => "users#new"
end
