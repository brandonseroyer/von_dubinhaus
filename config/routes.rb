Rails.application.routes.draw do
  devise_for :users, :path_prefix => 'd' # routes for devise modules on User
  resources :users # custom admin-type CRUD for users

  root to: 'home#index'

  get '/users', to: 'users#index'

  resources :dogs do
    resources :comments
  end

  resources :donations do
    resources :charges, :only => [:create]
  end

  resources :testimonials

  resources :applicants, :only => [:index, :new, :create, :show, :destroy]

  resources :training, :only => [:index]

  resources :faq, :only => [:index]

  resources :about, :only => [:index]

  resources :home, :only => [:index]
end
