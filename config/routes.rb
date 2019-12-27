# frozen_string_literal: true

Rails.application.routes.draw do
  get 'users/new'

  get 'static_pages/home'

  get 'static_pages/checklist'

  root 'application#hello'
end
