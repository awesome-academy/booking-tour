Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  get "sessions/new"
  root "static_pages#home"
  get "/signup", to: "users#new"
  get "/login", to: "sessions#new"
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
  resources :users
  namespace :admin do
    root "static_pages#index"
    resources :users
    resources :hotels
  end
end
