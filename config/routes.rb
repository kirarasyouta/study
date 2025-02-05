Rails.application.routes.draw do
  root 'top#index'
  get 'top/index'
  get 'list/testA'
  get 'list/testB'
  get 'list/testS'
  get 'preview/prevQ'
  get 'preview/prevA'
  get 'preview/delete'
  
  get 'top/index', to: 'top#index'
  get 'preview/prevQ/:id', to: 'preview#prevQ', as: :preview_question

  resources :questions, only: [:new, :create, :show, :edit, :update]
end
