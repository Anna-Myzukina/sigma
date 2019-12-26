Rails.application.routes.draw do
  get 'static_pages/home'

  get 'static_pages/checklist'

  root 'application#hello'
end
