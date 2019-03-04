Rails.application.routes.draw do
  
  root 'static_pages#home'
  get 'home', to: 'static_pages#home'
  get 'about', to: 'static_pages#about'
  get 'contact', to: 'static_pages#contact'
  get 'projects', to: 'static_pages#projects'

  resources :articles, only: [:index, :show] do
    # resources :comments
  end

  namespace :admin do
    root 'articles#index'
    resources :articles
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
