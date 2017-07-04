Rails.application.routes.draw do

  devise_for :users
  resources :achievements

	namespace :api do
		resources :achievements, only: [:index] do
			resources :encouragements, only: [:new, :create]
		end
	end

  root to: 'main#index'
end

