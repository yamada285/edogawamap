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
  resources :users
  resources :maps do
    resources :operation_hours
    collection do
      get :map
    end
  end
  get 'index' => 'maps#index'
  # resources :maps, only: [:index, :create]
end

