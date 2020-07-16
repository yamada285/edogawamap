Rails.application.routes.draw do
  get 'static_pages/home'
  get 'static_pages/help'
  get 'static_pages/about'
  root to: 'maps#index'
  resources :maps, only: [:index, :create]
end

