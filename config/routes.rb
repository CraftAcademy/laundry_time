Rails.application.routes.draw do

  root controller: :landing, action: :index

  devise_for :users

  resources :calendar, only: [:index]

end
