Rails.application.routes.draw do
  root to: "pages#home"
  devise_for :users
  get 'bookings/new'
  get 'jewels/index'
  get 'jewels/show'

  resources :jewels, only: %i[show index] do
    resources :bookings, only: %i[new create]
  end
end
