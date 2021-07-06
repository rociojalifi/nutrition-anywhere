Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :services do
    resources :bookings, only: [:create]
    get '/patient/bookings', to: 'bookings#bookings_requested'
    get '/nutri/bookings', to: 'bookings#bookings_given'
    resources :reviews, only: [:create]
  end
  resources :bookings, only: [:index, :show]
  resources :reviews, only: [:destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

# /seller/orders
# /buyer/orders

# /seller/orders/:id
# /buyer/orders/:id

# /seller/orders/1234
# /buyer/orders/1234