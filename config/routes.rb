SandwichOMG::Application.routes.draw do
  get "users/edit"

  get "users/update"

  root to: "sandwiches#index"
  resources :sandwiches
  match 'angry/sandwicher', to: 'sandwiches#angry_sandwicher', as: 'angry_sandwicher'
  match 'auth/:provider/callback', to: 'sessions#create', as: 'new_session'
  get '/sessions/destroy', to: 'sessions#destroy', as: 'session_destroy'
  match '/user/:id/profile', to: 'users#edit', as: 'edit_profile'
  match '/sandwich/complete', to: 'sandwiches#complete', as: 'order_complete'
end
