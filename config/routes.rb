Rails.application.routes.draw do
  resources :sellers
  resources :buyers

  ##USERS  
  # get '/users/:id', to: 'users#show'
  post '/signup', to: 'users#create'
  delete '/logout', to: 'auth#destroy'
  post "/login", to: "auth#create"
  # get '/me', to: 'users#show'
  get '/me', to: 'users#profile'
  get '/users', to: 'users#index'
  get 'users/:id', to: 'users#show'
  get 'users/:id/products', to: 'users#seller_products'


  ##PRODUCTS
  get '/products', to: 'products#index'
  get '/products/:id', to: 'products#show'
  post '/products', to: 'products#create'
  delete 'products/:id', to: 'products#destroy'
  get '/latest_products', to: 'products#latest_products'
  get '/highestbid/:id', to: 'products#maxamount'
  get '/activebids', to: 'products#active'
  get '/inactive_bids', to: 'products#inactive'
  patch '/close_bid/:id', to: 'products#closebid'
  patch '/products/:id', to: 'products#update'


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
  get '/category_products/:id', to: 'categories#find'

end
