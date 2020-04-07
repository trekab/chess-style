Rails.application.routes.draw do
  root 'articles#index'
  get 'sign-up', to: 'users#new'
  post 'sign-up', to: 'users#create'
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  get 'category/:id', to: 'categories#show', as: 'category'
  resources :articles
  resources :votes, only: [:create, :destroy]
end
