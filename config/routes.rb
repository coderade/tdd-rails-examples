Rails.application.routes.draw do

  devise_for :users
  resources :achievements

  root to: 'main#index'
end

