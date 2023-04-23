Rails.application.routes.draw do
  resources :sellers
  resources :buyers

  ##USERS  
  # get '/users/:id', to: 'users#show'
  post '/signup', to: 'users#create'
  delete '/logout', to: 'auth#destroy'
  post "/login", to: "auth#create"
  get '/buyer', to: 'users#buyerlog'
  get '/seller', to: 'users#sellerlog'


  ##PRODUCTS
  get '/products', to: 'products#index'
  get '/products/:id', to: 'products#show'
  post '/products', to: 'products#create'
  delete 'products/:id', to: 'products#destroy'
  get '/landing_products', to: 'products#latest_products'
  get '/highestbid/:id', to: 'products#maxamount'

  ##BIDS
  get '/bids', to: 'bids#index'
  post '/bids', to: 'bids#create'
  delete '/bids/:id', to: 'bids#destroy'
  get '/productbids/:id', to: 'bids#bidprods' #getting bids for a specific product
  get '/bidhistory', to: 'bids#show'
  get '/bids/:id', to: 'bids#onebid' #getting a specific bid

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
