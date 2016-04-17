Rails.application.routes.draw do
  devise_for :users
  root 'contents#index'
  resources :contents, only: [:index, :new, :create]
  get   'users/:id'  =>  'users#show'
end
