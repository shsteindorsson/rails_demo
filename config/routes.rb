Rails.application.routes.draw do

  devise_for :models
  
  get 'landing/index'

  resources :articles
 
  root 'landing#index'
  
end
