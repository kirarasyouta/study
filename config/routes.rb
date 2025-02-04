Rails.application.routes.draw do
  get 'select/select'

  resources :select
  post '/next_question', to: 'questions#next_question'
end
