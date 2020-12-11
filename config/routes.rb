Rails.application.routes.draw do
 
  #get 'users/show'
  devise_for :users, controllers: {
    registrations: 'users/registrations',
    #:sessions => 'users/sessions' 
  }
  #devise_scope :user do
    #get "sign_in", :to => "users/sessions#new"
    #get "sign_out", :to => "users/sessions#destroy" 
  #end

  resources :users, only: [:show,:edit,:update]do
  member do
    patch :level
    patch :icon
  end
end
  
  root to: "flowers#index"
  resources :flowers do
    collection do
      get :search
      get :ajax
    end
    resources :favos, only: [:create, :destroy]
  end

  resources :skins, only:[:show,:index]do
    member do
      get :preview
    end
   resources :orders, only:[:index,:create]
  end

  
end
