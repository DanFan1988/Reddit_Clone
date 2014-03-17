RedditClone::Application.routes.draw do

  resources :subs, :only => [:new, :create, :show]
  resources :posts, :only => [:new, :create, :show]
  resources :votes, :only => [:create]
  
  resources :users, :only => [:new, :create, :show]
  resource :session, :only => [:create, :destroy, :show]
  root :to => "root#root"
end
