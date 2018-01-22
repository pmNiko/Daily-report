Rails.application.routes.draw do
  devise_for :users
  resources :claims
  get 'claims/index'
  root to: "claims#index"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
