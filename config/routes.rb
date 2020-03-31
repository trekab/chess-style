Rails.application.routes.draw do
  get 'pages/home'
  get 'sign-up', to: 'users#new'
  post 'sign-up', to: 'users#create'
end
