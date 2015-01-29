Spree::Core::Engine.routes.draw do
  # Add your extension routes here
  namespace :admin do
    resources :inspiration_posts
    put "/inspiration_post_settings", to: "inspiration_posts#settings"
  end

  get "/inspiration", to: "inspiration_posts#index"
end
