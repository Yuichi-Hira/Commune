Rails.application.routes.draw do
  resources :categories
  resources :categories
  devise_for :users
  root 'contents#index'
  resources :contents, only: [:index, :new, :create, :show]
  get   'users/:id'  =>  'users#show'
delete  'contents/:id'   =>  'contents#destroy'
  get   'contents/:id'  => 'contents#show'
end
