Rails.application.routes.draw do
  devise_for :users
  resources :doctors
  resources :patients
  resources :appointments
  root to: "doctors#index"

end
