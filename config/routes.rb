Rails.application.routes.draw do
  resources :users , except: :index
  root 'tasks#index'
  resources :tasks
  resources :sessions , only: %i[new create destroy]
end
