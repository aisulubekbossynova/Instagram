Rails.application.routes.draw do
  match "/contact", to: "pages#contact", via: :get
  get "/about", to: "pages#about"
  root "pages#index"
  resources :users
  get "/login", to: "sessions#new"
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
end
