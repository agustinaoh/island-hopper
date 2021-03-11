Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  get 'dashboard', to: 'pages#dashboard'
  resources :islands do
    resources :bookings
  end

  get 'bookings/:id/accept', to: 'bookings#accept', as: :accept_booking

  get 'bookings/:id/reject', to: 'bookings#reject', as: :reject_booking


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
