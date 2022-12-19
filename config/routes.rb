Rails.application.routes.draw do
  root 'welcome#index'

  namespace :api do
    namespace :v1 do
      resources :users, only: [:create]

      post '/login', to: 'auth#create'
    end
  end

  resource :users
  resources :spaceships

  resources :hull_parts, only: [:index]
  resources :engine_parts, only: [:index]
  resources :star_systems, only: [:index]

  get '*path',
    to: 'fallback#index',
    constraints: ->(req) { !req.xhr? && req.format.html? }
end
