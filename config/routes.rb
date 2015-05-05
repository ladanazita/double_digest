Rails.application.routes.draw do

  root 'welcome#index'

  resources :user
  resources :trend
  resources :video
  resources :comment

 end
