Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  
  # Defines the root path route ("/")
  # root "articles#index"
  root 'pages#home'
  
  get '/hello(/:name)', to: 'pages#hello', as: 'hello'
  
  get 'posts/proof', to: 'posts#proof', as: 'proof'

  resources :posts
  resources :categories

end
