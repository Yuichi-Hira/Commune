Rails.application.routes.draw do
  devise_for :users
  root 'contents#index'
  resources :contents, only: [:index, :new, :create]
  get   'users/:id'  =>  'users#show'
  delete  'contents/:id'   =>  'contents#destroy'
  get   'contents/:id'  => 'contents#show'
end
