# frozen_string_literal: true

Rails.application.routes.draw do
  get  '/signup',  to: 'users#new'

  get '/home',      to: 'static_pages/home'
  get '/audit',     to: 'static_pages/audit'
  get '/checklist', to: 'static_pages/checklist'

  root 'static_pages#home'
end
