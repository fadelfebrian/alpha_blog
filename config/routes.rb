# frozen_string_literal: true

Rails.application.routes.draw do
  root 'pages#home'
  get  'about', to: 'pages#about'

  get 'tes', to: 'articles#tes'

  resources :articles

  get 'signup', to: 'users#new'
  resources :users, except: [:new]
end
