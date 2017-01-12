Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :conversations do
  	resources :messages

  	collection do
  		get :inbox
  		get :all, action: :index
  		get :sent
  		get :trash 
  	end
  end

  root to: 'main#index'
end
