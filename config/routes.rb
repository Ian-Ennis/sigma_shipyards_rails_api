Rails.application.routes.draw do
  resources :hull_parts, only: [:index]
  resources :engine_parts, only: [:index]
  resources :spaceships, only: [:index, :create, :update, :destroy]
  resources :star_systems, only: [:index]

  resource :users, only: [:create]
  post "/login", to: "auth#login"
  get "/auto_login", to: "auth#auto_login"
  get "/user_is_authed", to: "auth#user_is_authed"

  get '*path',
      to: 'fallback#index',
      constraints: ->(req) { !req.xhr? && req.format.html? }
end