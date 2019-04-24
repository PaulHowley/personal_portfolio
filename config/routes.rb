Rails.application.routes.draw do
  require 'sidekiq/web'
  Sidekiq::Web.use Rack::Auth::Basic do |username, password|
    # Protect against timing attacks:
    # - See https://codahale.com/a-lesson-in-timing-attacks/
    # - See https://thisdata.com/blog/timing-attacks-against-string-comparison/
    # - Use & (do not use &&) so that it doesn't short circuit.
    # - Use digests to stop length information leaking (see also ActiveSupport::SecurityUtils.variable_size_secure_compare)
    username == ENV.fetch("USERNAME") && password == ENV.fetch("PASSWORD")
  end
  mount Sidekiq::Web => '/sidekiq'

  root 'static_pages#home'
  get 'about', to: 'static_pages#about'
  get 'contact', to: 'static_pages#contact'
  get 'projects', to: 'static_pages#projects'

  resources :articles, only: [:index, :show] do
    resources :comments, only: [:show, :create]
  end

  namespace :admin do
    root 'articles#index'
    resources :articles
    resources :comments, only: [:destroy]
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
