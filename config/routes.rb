Rails.application.routes.draw do
  resources :contents, only: [:index, :new]
end
