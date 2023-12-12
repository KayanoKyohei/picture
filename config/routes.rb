Rails.application.routes.draw do
  get "login" => "user#login_form"
  post "login" => "user#login"
  get "logout" => "user#logout"
  
  post "user/:id/update" => "user#update"
  get "user/:id/edit" => "user#edit"
  post "user/create" => "user#create"
  get "signup" => "user#new"
  get 'user/index' => "user#index"
  get "user/:id" => "user#show"
  
  get 'posts/index' => "posts#index"
  get "posts/new" => "posts#new"
  get "posts/:id" => "posts#show"
  
  get 'home/top' => "home#top"
  get "home/about" => "home#about"
  
  get "/" => 'blogs#index'
  resources :blogs
  
end
