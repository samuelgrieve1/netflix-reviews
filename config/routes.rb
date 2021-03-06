Rails.application.routes.draw do
  root 'homes#index'
  devise_for :users

  get '/netflix_shows', to: "homes#index"
  get '/netflix_shows/:id', to: "homes#index"
  get '/users/:id', to: "homes#index"

  resources :users, only: [:show]
  
  namespace :api do
    namespace :v1 do
      resources :users, only: [:show]
      resources :netflix_shows, only: [:index, :show] do
        resources :reviews, only: [:create] do
            resources :votes, only: [:create]
        end
        resources :reviews, only: [:create] 
      end
    end
  end
end
