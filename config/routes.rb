Rails.application.routes.draw do
  devise_for :users, :path_prefix => 'd' # routes for devise modules on User
  resources :users # custom admin-type CRUD for users

  root to: 'dogs#index'

  get '/users', to: 'users#index'

  resources :dogs do
    resources :comments
  end

  resources :applicants

end
