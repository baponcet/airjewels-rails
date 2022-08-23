Rails.application.routes.draw do
  root to: "pages#home"
  devise_for :users
  get '/dashboard', to: "pages#dashboard", as: :dashboard
  resources :jewels, only: %i[show index new create edit update destroy] do
    resources :bookings, only: %i[new create]
  end
end
