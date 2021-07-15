Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get '/bookings_requested', to: 'bookings#bookings_requested'
  get '/bookings_given', to: 'bookings#bookings_given'
  get '/users/settings', to: 'users#settings'
  get '/auth/zoom/callback', to: 'omniauth#zoom'
  get '/about', to: 'users#about'

  resources :services do
    resources :bookings, only: [:create]
  end

  resources :bookings, only: [:index, :show, :destroy]
  resources :reviews, only: [:destroy, :create]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
