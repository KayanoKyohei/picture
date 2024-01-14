Rails.application.routes.draw do
  resources :blogs do
    collection do
  get :search
  get :searchmemo
end
end
  
  
  post "likes/:post_id/create" => "likes#create"
  post "likes/:post_id/destroy" => "likes#destroy"
  
  get "login" => "user#login_form"
  post "login" => "user#login"
  get "logout" => "user#logout"
  
  post "user/:id/destroy" => "user#destroy"
  post "user/:id/update" => "user#update"
  get "user/:id/edit" => "user#edit"
  post "user/create" => "user#create"
  get "signup" => "user#new"
  get 'user/index' => "user#index"
  get "user/:id" => "user#show"
  get "user/:id/likes" => "user#likes"
  
  get 'posts/index' => "posts#index"
  get "posts/new" => "posts#new"
  get "posts/:id" => "posts#show"
  
  get '/' => "home#top"
  get "home/about" => "home#about"
  
  get "blog" => 'blogs#index'
  get "blogs/new" => "blogs#new"
  get "blogs/show" => "blogs#show"
  get "blogs/:id/edit" => "blogs#edit"
  get "blogs/:id/destroy" => "blogs#destroy"
  post "blogs/:id/up_date" => "blogs#up_date"
  resources :blogs
  
end
