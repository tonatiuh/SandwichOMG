SandwichOMG::Application.routes.draw do
  root to: "sandwiches#index"
  resources :sandwiches
  match "angry/sandwicher", to: "sandwiches#angry_sandwicher", as: "angry_sandwicher"
end
