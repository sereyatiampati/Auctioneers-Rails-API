Rails.application.routes.draw do
  ##USERS
  
  # get '/users/:id', to: 'users#show'
  post '/signup', to: 'users#create'
  delete '/users', to: 'users#destroy'
  get '/me', to: 'users#profile'
  post "/login", to: "auth#create"


  ##PRODUCTS
  get '/products', to: 'products#index'
  get '/products/:id', to: 'products#show'
  post '/products', to: 'products#create'
  delete 'products/:id', to: 'products#destroy'
  get '/landing_products', to: 'products#landing'

  ##BIDS
  get '/bids', to: 'bids#index'
  post '/bids', to: 'bids#create'
  delete '/bids/:id', to: 'bids#destroy'
  get '/productbids/:id', to: 'bids#bidprods' #getting bids for a specific product
  get '/bidhistory', to: 'bids#bidhistory'

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
