Rails.application.routes.draw do
  root to: "pages#home"
  devise_for :users
  resources :jewels, only: %i[show index] do
    resources :bookings, only: %i[new create]
  end
end
