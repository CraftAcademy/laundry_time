Rails.application.routes.draw do


  root controller: :laundry_rooms, action: :index
  resources :laundry_rooms, only: [:index]
  devise_for :users
end