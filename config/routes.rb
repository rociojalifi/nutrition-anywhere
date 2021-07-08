Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get '/bookings_requested', to: 'bookings#bookings_requested'
  get '/bookings_given', to: 'bookings#bookings_given'
  resources :services do
    resources :bookings, only: [:create]
    resources :reviews, only: [:create]
  end
  resources :bookings, only: [:index, :show, :detele]
  resources :reviews, only: [:destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

# /seller/orders
# /buyer/orders

# /seller/orders/:id
# /buyer/orders/:id

# /seller/orders/1234
# /buyer/orders/1234