Rails.application.routes.draw do
  get 'landing/index'
  root controller: :landing, action: :index
  get 'articles/new' => "articles#new", as: :articles_new
end
