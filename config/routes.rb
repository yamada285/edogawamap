Rails.application.routes.draw do
  get 'maps/index'
  root to: 'maps#index'
  resources :maps, only: [:index]
  # root 'application#hello'
end

# AIzaSyDUTRlQPedRbflYmw6ueVt6t-kcZPpt7ig