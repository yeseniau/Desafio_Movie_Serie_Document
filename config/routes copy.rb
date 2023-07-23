Rails.application.routes.draw do
  get 'welcome/index'

  get 'series/index'
  get 'series/new'
  get 'series/create'
  
  post 'series/new'
  post 'series/create'

  get 'movies/index'
  get 'movies/new'
  get 'movies/create'
  
  post 'movies/new'
  post 'movies/create'

  get 'documentaryfilms/index'
  get 'documentaryfilms/new'
  get 'documentaryfilms/create'
  
  post 'documentaryfilms/new'
  post 'documentaryfilms/create'
  

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "welcome#index"
end
