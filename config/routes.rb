Rails.application.routes.draw do

  devise_for :users
  resources :achievements do
		resources :encouragements, only: [:new, :create]
	end

	namespace :api do
		resources :achievements, only: [:index] do
		end
	end

  root to: 'main#index'
end

