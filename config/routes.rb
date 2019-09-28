Rails.application.routes.draw do

  devise_for :models
  get 'landing/index'

  resources :articles
 
  root 'landing#index'
  get 'articles/new' => "articles#new", as: :articles_new_get
  #post 'articles/new' => "articles#new", as: :articles_new_post
end
