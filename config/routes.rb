Rails.application.routes.draw do
 
  #get 'users/show'
  resources :users, only: [:show,:edit,:update]
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }
  
  root to: "flowers#index"
  resources :flowers do
    get :icons, on: :member
  end

  resources :skins, only:[:show]
  
end
