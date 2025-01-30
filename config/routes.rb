Rails.application.routes.draw do
  get 'top/index'
  get 'list/testA'
  get 'list/testB'
  get 'list/testS'
  
  resources :top
end
