Rails.application.routes.draw do
  devise_for :users
  resources :posts
  resources :themes

  get "/", to: "posts#index"
  get "/themes/:theme_id/posts", to:"themes#theme_posts_index"

  resources :posts do
    resources :comments
  end

  resources :themes do
    resources :posts, except: [:index]
  end


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
