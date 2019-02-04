Rails.application.routes.draw do
  root 'home#home'
  get '/signup' => 'users#new'
  resources :users
  resources :messages, only: [:new, :index]
end
