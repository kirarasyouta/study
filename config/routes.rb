Rails.application.routes.draw do
  root 'top#index'
  
  get 'top/index', to: 'top#index'

  resources :questions, only: [:new, :create, :show, :edit, :update]
end
