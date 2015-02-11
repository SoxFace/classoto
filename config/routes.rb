Rails.application.routes.draw do
  root :to => 'pages#home'
  resources :users
  resources :pages, :only => [:index]
  resources :comments, :only => [:new, :create, :show]

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'
  
end
