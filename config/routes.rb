Rails.application.routes.draw do
  resources :welcomes, only: [:index, :new, :create]
  root 'welcomes#index'
end
