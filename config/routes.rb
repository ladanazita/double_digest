Rails.application.routes.draw do
  get 'trends/index'

  get 'trends/show'

  root 'welcome#index'
    resources :user
    namespace :api do
      resources :trend
        resources :video
    end
          resources :comment
  match '/auth/:provider/callback', to: 'sessions#create', via: [:get, :post]
  match '/auth/failure', to: redirect('/'), via: [:get, :post]
  match '/signout', to: 'sessions#destroy', as:'signout', via: [:get, :post]
 end
