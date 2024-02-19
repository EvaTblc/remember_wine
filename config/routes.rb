Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'users/registrations' }
  # match '/users/:id', to: 'users#show', via: 'get'
  root to: 'pages#home'

  resources :users, only: :show
  resources :wines
end
