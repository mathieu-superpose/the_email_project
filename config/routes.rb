Rails.application.routes.draw do
  root to: "emails#index"
  resources :emails, only: [:index, :create, :show, :destroy]
  devise_for :users
  resources :tasks, except: [:show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
