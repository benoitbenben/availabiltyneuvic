Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # par défaut nous sommes dans le cas du renter :
  resources :houses, only: [:index, :show] do
    resources :bookings, only: [:index, :show, :create, :edit, :update, :destroy]
  end

  resources :bookings, only: [:index, :show, :edit, :update, :destroy]

  # profile utilisateur
  resource :profile, only: [:show, :edit, :update]
end
