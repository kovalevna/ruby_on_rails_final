Rails.application.routes.draw do
  # get 'calc/input'
  # post 'calc/output'
  get '/login', to: 'session#login'
  get '/input', to: 'calc#input'
  post '/output', to: 'calc#output'
  post 'session/create'
  get 'session/logout'
  root 'calc#input'
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
