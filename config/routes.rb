Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }
  devise_scope :user do
    get 'destinations', to: 'users/registrations#new_destination'
    post 'destinations', to: 'users/registrations#create_destination'
  end
  root to: "top#index"
  resources :users, only: [:show]

  resources :tests, only: [:index, :new, :create,]

  get "logout" => "users#logout"
  get "ncard" => "users#ncard"
  get "scard" => "users#scard"
end
