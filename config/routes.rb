SandwichOMG::Application.routes.draw do
  root to: "sandwiches#index"
  resources :sandwiches
end
