Rails.application.routes.draw do
  root to: "homes#top"
  get "/homes/about" => "homes#about", as: "about"
  devise_for :users
  resources :book, only: [:new, :create, :index, :show, :destroy]
  resources :users, onky: [:show, :edit, :update]
end
