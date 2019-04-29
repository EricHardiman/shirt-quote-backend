Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :colors
      resources :styles
      resources :manufactures
      resources :users, only: [:create]
      post '/login', to: 'auth#create'
      get '/profile', to: 'users#get_user'
    end
  end
end
