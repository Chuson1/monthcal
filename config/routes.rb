Rails.application.routes.draw do
  get 'events/index'
  get 'events/show'
  get 'events/new'
  get 'events/edit'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  root 'pages#index'
  resources :users
  # get 'pages/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
