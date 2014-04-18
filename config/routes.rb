BWriter::Application.routes.draw do
  devise_for :users
  root to: "users#index"
  resources :users, only: :show
  resources :blurts
  resources :upvotes
end
