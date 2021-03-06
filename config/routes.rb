Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  resources :claims
  resources :teams
  root to: "claims#index"

  get '/profile/edit', to:'profiles#edit',
    as: 'edit_profile'
  patch '/profile', to:'profiles#update'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
