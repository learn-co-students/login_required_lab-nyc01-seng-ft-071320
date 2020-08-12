Rails.application.routes.draw do
  root 'application#hello'
  get '/secrets', to: "secrets#show", as: 'secret'
  get '/sessions/new', to: 'sessions#new', as: 'login'
  post '/session', to: 'sessions#create'
  post '/session', to: 'sessions#destroy', as: 'delete'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
