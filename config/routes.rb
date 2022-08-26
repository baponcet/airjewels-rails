Rails.application.routes.draw do
  root to: "pages#home"
  devise_for :users
  get '/dashboard', to: "pages#dashboard", as: :dashboard
  resources :jewels, only: %i[show index new create edit update destroy] do
    resources :bookings, only: %i[new create show] do
      get '/dashboard/cancel_booking', to: 'pages#cancel_booking', as: :cancel_booking
      get '/dashboard/accept_booking', to: "pages#accept_booking", as: :accept_booking
    end
  end
end
