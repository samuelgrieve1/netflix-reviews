Rails.application.routes.draw do
  root 'netflix_shows#index'
  devise_for :users
  # resources :peoples

  resources :netflix_shows, only: [:index]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
