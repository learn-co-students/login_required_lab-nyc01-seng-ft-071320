Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'secrets/show'

  root to: 'sessions#new'
  post 'sessions/login', to: 'sessions#create'
  post 'sessions/destroy', to: 'sessions#destroy'

end
