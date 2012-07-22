SandwichOMG::Application.routes.draw do
  match "sandwiches/new", to: "sandwiches#new", as: "new_sandwich"
  root to: "sandwiches#index"
end
