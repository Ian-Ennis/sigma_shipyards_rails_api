Rails.application.routes.draw do
  resources :hull_parts, only: [:index]
  resources :engine_parts, only: [:index]
  resources :spaceships, only: [:index, :create, :update, :destroy]
  resources :star_systems, only: [:index]

  namespace :api do
    namespace :v1 do
      resources :users, only: [:create]
      post '/login', to: 'auth#create'
      get '/profile', to: 'users#profile' 
    end
  end

  get '*path',
      to: 'fallback#index',
      constraints: ->(req) { !req.xhr? && req.format.html? }
end