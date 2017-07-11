Rails.application.routes.draw do

  root 'cats#index' 
  resources :users

  get '/login' => 'sessions#new', as: :login
  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy', as: :logout

  resources :cats

end
