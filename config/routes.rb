Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  
  # Defines the root path route ("/")
  # root "articles#index"
  root 'pages#home'
  
  get '/hello(/:name)', to: 'pages#hello', as: 'hello'
  
  get 'posts/privated', to: 'posts#privated', as: 'privated'

  resources :posts

end
