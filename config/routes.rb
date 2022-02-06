Rails.application.routes.draw do
  root "homes#top"
  get "homes/about" => "homes#about" ,as: "about"
  
  devise_for :users
  resource :users, only: [:show, :edit]
  resource :books, only: [:new, :create, :index, :show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
