Rails.application.routes.draw do
  root to: 'static_pages#home'
  get 'static_pages/home'
  get 'help' => 'static_pages#help'
  get 'about' => 'static_pages#about'
  get '/signup' => 'users#new'
  post '/signup' => 'users#create'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'
  get '/index' => 'maps#index'
  get '/maps/:id' => 'maps#show'
  post '/maps/create' => 'maps#create'
  resources :users
  resources :posts
  post '/posts/create' => 'posts#create'
end

