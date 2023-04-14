Rails.application.routes.draw do
  ##USERS
  get '/users', to: 'users#index'
  get '/users/:id', to: 'users#show'
  post '/users', to: 'users#create'
  delete '/users', to: 'users#destroy'

  ##PRODUCTS
  get '/products', to: 'products#index'
  get '/products/:id', to: 'products#show'
  post '/products', to: 'products#create'
  delete 'products/:id', to: 'products#destroy'

  ##BIDS
  get '/bids', to: 'bids#index'
  get '/bids/:id', to: 'bids#show'
  post '/bids', to: 'bids#create'
  delete '/bids', to: 'bids#destroy'

  ##CATEGORIES
  get '/categories', to: 'categories#index'
  get '/categories/:id', to: 'categories#show'
  post '/categories', to: 'categories#create'
  delete '/categories/:id', to: 'categories#destroy'

  ##ROLES
  get '/roles', to: 'roles#index'
  get '/roles/:id', to: 'roles#show'
  post '/roles', to: 'roles#create'
  delete '/roles/:id', to: 'roles#destroy'
end
