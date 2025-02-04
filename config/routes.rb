Rails.application.routes.draw do
<<<<<<< HEAD
  root 'top#index'
=======
  get 'top/index'
  get 'list/testA'
  get 'list/testB'
  get 'list/testS'
  get 'preview/prevQ'
  get 'preview/prevA'
  get 'preview/delete'
>>>>>>> 10f3437fd93eb875efe966c970fe8e3b352fcb21
  
  get 'top/index', to: 'top#index'

  resources :questions, only: [:new, :create, :show]
end
