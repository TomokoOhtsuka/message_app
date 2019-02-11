Rails.application.routes.draw do
  root 'home#home'
  get  '/signup' => 'users#new'
  post '/signup' => 'users#create'
  get  '/login'  => 'sessions#new'
  post '/login'  => 'sessions#create'
  get  '/log_in' => 'sessions#destroy'
  resources :users, only: [:show, :index, :edit, :upadte, :destroy] 
  resources :messages, only: [:new, :index]
end
