Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'application#hello'
  get '/login' => 'sessions#new'
  get '/secret' => 'secrets#show'
  post '/login' => 'sessions#create'
  post '/logout' => 'sessions#destroy'
end
