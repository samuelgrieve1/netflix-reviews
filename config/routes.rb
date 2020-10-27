Rails.application.routes.draw do
  root 'homes#index'
  devise_for :users

  get '/netflix_shows', to: "homes#index"
  get '/netflix_shows/:id', to: "homes#index"
  get '/netflix_shows/:id/add_review', to: "homes#index"
  get '/users/:id', to: "homes#index"
  
  namespace :api do
    namespace :v1 do
      resources :netflix_shows, only: [:index, :show] do
        resources :reviews, only: [:create]
      end
      resources :netflix_shows, only: [:index, :show] do
        resources :users, only: [:show]
      end
    end
  end
end
