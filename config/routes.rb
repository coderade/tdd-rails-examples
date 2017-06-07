Rails.application.routes.draw do

  resources :achievements

  root to: 'main#index'
end

