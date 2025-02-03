Rails.application.routes.draw do
  get 'top/index'
  get 'list/testA'
  get 'list/testB'
  get 'list/testS'
  get 'preview/prevQ'
  get 'preview/prevA'
  get 'preview/delete'
  
  resources :top
end
