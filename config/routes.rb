Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :images, only: [:create, :destroy]
      resources :quotes
      resources :colors
      resources :styles
      resources :manufactures
      resources :users, only: [:create]
      post '/login', to: 'auth#create'
      get '/profile', to: 'users#get_user'
      get '/my_quotes/:id', to: 'users#user_quotes'
      get '/get_quote/:id', to: 'quotes#get_quote'
      get '/all_quotes', to: 'quotes#all_quotes'
    end
  end
end
