Rails.application.routes.draw do
  get 'comments/body:string'

  root 'welcome#index'
  # get 'trends/index'
  # get 'trends/show'
  get '/signup' => 'users#new'
  post '/signup' => 'users#create'
  post '/users/:id' => 'users#show', as: :user

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  post '/signup' => 'sessions#create'
  get '/signout' => 'sessions#destroy'

  namespace :api do
    namespace :v1 do
      resources :trends do
        resources :videos do
          resources :comment
        end
      end
    end
  end
  

  # match '/auth/:provider/callback', to: 'sessions#create', via: [:get, :post]
  # match '/auth/failure', to: redirect('/'), via: [:get, :post]
  # match '/signout', to: 'sessions#destroy', as:'signout', via: [:get, :post]
end
