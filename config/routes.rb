SandwichOMG::Application.routes.draw do
  root to: "sandwiches#index"
  resources :sandwiches
  match 'angry/sandwicher', to: 'sandwiches#angry_sandwicher', as: 'angry_sandwicher'
  match 'auth/:provider/callback', to: 'sessions#create', as: 'new_session'
end
