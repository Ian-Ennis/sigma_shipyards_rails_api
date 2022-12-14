Rails.application.routes.draw do
  root 'welcome#index'

  namespace :api do
    namespace :v1 do
      resources :users, only: [:create]

      post '/login', to: 'auth#create'
      get '/profile', to: 'users#profile'
    end
  end

  resource :users
  resources :hull_parts, only: [:index]
  resources :engine_parts, only: [:index]
  resources :spaceships
  resources :star_systems

  get '*path',
      to: 'fallback#index',
      constraints: ->(req) { !req.xhr? && req.format.html? }
end
