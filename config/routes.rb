Rails.application.routes.draw do
  root 'welcome#index'

  # LOGIN AND SIGNUP ROUTES
  get '/signup' => 'users#new'
  post '/signup' => 'users#create'
  post '/users/:id' => 'users#show', as: :user
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  post '/signup' => 'sessions#create'
  get '/signout' => 'sessions#destroy'
  # FACEBOOK LOGIN
  match 'auth/:provider/callback', to: 'sessions#create', via: [:get, :post]
  match 'auth/failure', to: redirect('/'), via: [:get, :post]
  match 'signout', to: 'sessions#destroy', as:'signout', via: [:get, :post]
  # ALL OTHER ROUTES
  namespace :api do
    namespace :v1 do
    get 'search' => 'trends#search'
      resources :trends do
        resources :videos
        resources :comments
      end
    end
  end
end
