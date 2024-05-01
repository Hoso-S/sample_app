Rails.application.routes.draw do
  # GET /
  root "static_pages#home"
  get 'static_pages/home'
  get 'static_pages/help'
  get 'static_pages/about'
  # root "hello#index"
end
