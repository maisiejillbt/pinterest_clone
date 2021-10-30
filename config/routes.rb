Rails.application.routes.draw do

  namespace :api, defaults: {format: :json} do
    resource :users, only: [:create, :destroy]
    
    resource :session, only: [:create, :destroy, :show]
  end
  
  root to: "static_pages#root"

end
