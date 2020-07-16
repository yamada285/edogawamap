Rails.application.routes.draw do
  root to: 'static_pages#home'
  get 'static_pages/home'
  get "help" => 'static_pages#help'
  get "about" => 'static_pages#about'
  get "index" => 'maps#index'
  resources :maps, only: [:index, :create]
  get "/signup" => 'users#new'
  post "/signup" => 'users#create'
  resources :users
end

