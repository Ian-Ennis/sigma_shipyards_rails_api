Rails.application.routes.draw do
  resource :users
  resources :hull_parts, only: [:index]
  resources :engine_parts, only: [:index]
  resources :spaceships
  resources :star_systems

  post "/login", to: "auth#login"

  get '*path',
      to: 'fallback#index',
      constraints: ->(req) { !req.xhr? && req.format.html? }
end