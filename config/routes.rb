Rails.application.routes.draw do
  devise_for :users
  root to: 'dogs#index'

  resources :dogs do
    resources :comments
  end

resources :applicants

end
