Rails.application.routes.draw do
  root 'welcome#index'
  # match 'auth/:provider/callback', to: 'sessions#create', via [:get, :post]
  # match 'auth/failure', to: redirect('/'), via: [:get, :post]
  # match 'signout', to: 'sessions#destroy', as:'signout', via: [:get, :post]

    resources :user
      resources :trend
        resources :video
          resources :comment
 end
