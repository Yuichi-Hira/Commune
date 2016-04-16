Rails.application.routes.draw do
  resources :contents, only: :index
  resources :contents, only: :new
end
