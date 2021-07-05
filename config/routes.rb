Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :services do
    resources :bookings, only: [:create]
    get '/bookings', to: 'bookings#service_bookings', as: :service_bookings
    resources :reviews, only: [:create]
  end
  resources :bookings, only: [:index, :show]
  resources :reviews, only: [:destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
