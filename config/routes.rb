Rails.application.routes.draw do
  devise_for :users
  root 'contents#index'
  resources :contents, only: [:index, :new, :create]
  get   'users/:id'  =>  'users#show'
<<<<<<< Updated upstream
<<<<<<< Updated upstream
  delete  'contents/:id'   =>  'contents#destroy'
  get   'contents/:id'  => 'contents#show'
=======
>>>>>>> Stashed changes
=======
>>>>>>> Stashed changes
  get   'contents/:id'  => 'contents#show'
end
