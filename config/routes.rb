Rails.application.routes.draw do
  devise_for :users
  resources :cauthus

  root 'index#welcome'
  get '/about'=> 'index#about'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
