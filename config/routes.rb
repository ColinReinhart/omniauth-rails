Rails.application.routes.draw do
  root 'application#index'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'
  get '/auth/:provider/callback', to: 'sessions#omniauth'
end
