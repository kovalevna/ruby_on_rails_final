# frozen_string_literal: true

Rails.application.routes.draw do
  # get 'football/input'
  # post 'football/output'
  get '/login', to: 'session#login'
  get '/input', to: 'football#input'
  post '/output', to: 'football#output'
  post 'session/create'
  get 'session/logout'
  root 'football#input'
  resources :users, except: %i[index show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
