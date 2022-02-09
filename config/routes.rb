Rails.application.routes.draw do
  resources :hull_parts, only: [:index]
  resources :engine_parts, only: [:index]
  resources :spaceships, only: [:index, :show, :create, :update, :destroy]
  resources :star_systems, only: [:index]

  # handles user signing up
  resource :users, only: [:create] 

  # allows existing users to login (become authorized)
  post "/login", to: "auth#login"

  # allows existing users to automatically log back in (re-authorized)
  get "/auto_login", to: "auth#auto_login"

  # route only accessable to authorized users
  get "/user_is_authed", to: "auth#user_is_authed"

  get '*path',
      to: 'fallback#index',
      constraints: ->(req) { !req.xhr? && req.format.html? }
end