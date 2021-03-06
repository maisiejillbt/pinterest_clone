Rails.application.routes.draw do

  namespace :api, defaults: { format: :json } do
    resources :users
    resources :boards
    resources :pins
    resources :saves, only: [:create, :destroy]
    resources :follows, only: [:create, :destroy, :index]
    resource :session, only: [:create, :destroy]

  end
  
  root to: "static_pages#root"

end
