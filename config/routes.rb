Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :cats do
    resources :bookings, only: [:new, :create]
  end
    
  resources :bookings, only: [:index, :create, :show] do
    collection do
      patch :validate
    end
    resources :booking_reviews, only: [:new, :create]
  end
 
  get "/dashboard", to: "dashboard#index"

  # get "/reservations/:id", to: "reservations#show"

end
