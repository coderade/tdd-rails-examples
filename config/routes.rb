Rails.application.routes.draw do
  get 'main/index'

  resources :achievement, only: [:new, :create]

  root to: 'main#index'
end
