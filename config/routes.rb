Rails.application.routes.draw do
  root 'homes#index'
  get '/netflix_shows/:id', to: "homes#index"
  
  devise_for :users

  namespace :api do
    namespace :v1 do
      resources :netflix_shows, only: [:show]
    end
  end
end
