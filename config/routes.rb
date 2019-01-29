Rails.application.routes.draw do
  get '/signup' => 'users#new'
  resources :users
  resources :messages, only: [:new, :index]
end
