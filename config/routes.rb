Rails.application.routes.draw do
  root 'welcome#index'
    resources :user
      resources :trend
        resources :video
          resources :comment
  match '/auth/:provider/callback', to: 'sessions#create', via: [:get, :post]
  match '/auth/failure', to: redirect('/'), via: [:get, :post]
  match '/signout', to: 'sessions#destroy', as:'signout', via: [:get, :post]
 end
