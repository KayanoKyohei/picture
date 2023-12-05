Rails.application.routes.draw do
  get 'home/top' => "home#top"
  get "home/about" => "home#about"
  get "/" => 'blogs#index'
  resources :blogs
  
end
