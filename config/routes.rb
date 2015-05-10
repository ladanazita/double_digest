Rails.application.routes.draw do
  # get 'trends/index'
  # get 'trends/show'
  get '/signup' => 'users#new'
  post '/users' => 'users#create'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'session#destroy'

  root 'welcome#index'
    resources :user
      namespace :api do
        resources :trends
          resources :video
            resources :comment
    end

  match '/auth/:provider/callback', to: 'sessions#create', via: [:get, :post]
  match '/auth/failure', to: redirect('/'), via: [:get, :post]
  match '/signout', to: 'sessions#destroy', as:'signout', via: [:get, :post]
 end
