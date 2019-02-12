Rails.application.routes.draw do
  resources :articles, only: [:index, :show] do
    resources :comments
  end

  namespace :admin do
    root 'articles#index'
    resources :articles
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
