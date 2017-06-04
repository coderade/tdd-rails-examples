Rails.application.routes.draw do

  resources :achievements, only: [:new, :create, :show]

  root to: 'main#index'
end

