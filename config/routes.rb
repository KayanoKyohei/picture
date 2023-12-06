Rails.application.routes.draw do
  get 'posts/index' => "posts#index"
  get "posts/:id" => "posts#show"
  get 'home/top' => "home#top"
  get "home/about" => "home#about"
  get "/" => 'blogs#index'
  resources :blogs
  
end
