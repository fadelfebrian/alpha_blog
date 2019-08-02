Rails.application.routes.draw do
  root 'pages#home'
  get  'about', to: 'pages#about'

  get 'tes', to: 'articles#tes'

  resources :articles
end