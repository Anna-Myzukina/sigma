# frozen_string_literal: true

Rails.application.routes.draw do
  root 'static_pages#home'
  get '/home',      to: 'static_pages#home'

  get  '/signup',  to: 'users#new'
  post '/signup',  to: 'users#create'

  get '/audit',     to: 'static_pages#audit'
  get '/checklist', to: 'static_pages#checklist'

  resources :users
end
