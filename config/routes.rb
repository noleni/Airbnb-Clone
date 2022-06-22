Rails.application.routes.draw do
  devise_for :users
  root to: "flats#index"
  resources :flats do
    resources :bookings, only: %i[new create]
  end
  get 'users/:id', to: 'users#show', as: :user



end
