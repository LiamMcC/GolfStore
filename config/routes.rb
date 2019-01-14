Rails.application.routes.draw do
  resources :user_profiles
  resources :categories
  resources :orders do resources:orderitems
end
  
  devise_for :users do 
    resources:orders 
  end
  
  get '/myorders' => 'static_pages#myOrders'
  
  get '/category/:title' => 'static_pages#category'
  
  get '/checkout' => 'cart#createOrder'
  
  post '/search' => 'items#search'
  
  get '/payment' => 'orders#pay'
  get '/shipped/:id' => 'orders#shipped'
  get 'cart/index'

  resources :items
  root 'static_pages#home'

  get '/help' => 'static_pages#help'
  
  get '/aboutSend/:id' => 'static_pages#aboutSend'

  get '/about' => 'static_pages#about'

get '/cart' => 'cart#index'

get '/cart/clear' => 'cart#clear'
get '/cart/:id' => 'cart#add'
get '/cart/remove/:id' => 'cart#remove'

 
end
