Rails.application.routes.draw do
  devise_for :users
  root to:'home#welcome'    
  resources :menus
end
