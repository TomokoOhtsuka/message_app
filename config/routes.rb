Rails.application.routes.draw do
  get '/signup' => 'users#new'
  resources :messages, only: [:new, :index]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
