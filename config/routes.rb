Rails.application.routes.draw do
 
  root to: "flowers#index"
  resources :flowers
  
end
