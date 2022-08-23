Rails.application.routes.draw do
  root to: "pages#home"
  devise_for :users
  get 'users/:user_id/dashboard', to: "bookings#index"
  resources :jewels, only: %i[show index new create edit update destroy] do
    resources :bookings, only: %i[new create]
  end
end
