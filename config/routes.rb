Rails.application.routes.draw do
  root 'articles#index'
  resources :articles do
    resources :comments
  end

  namespace :admin do
    root 'articles#index'
    resources :articles
  end

  get 'articles/show'

  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
