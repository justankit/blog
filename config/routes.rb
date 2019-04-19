Rails.application.routes.draw do
  # devise_for :users
  devise_for :users, :controllers => {:registrations => "registrations"}
	root to: 'posts#index'
 	resources :posts do
	 	resources :comments
	end
	resources :users, only: [:index, :destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
