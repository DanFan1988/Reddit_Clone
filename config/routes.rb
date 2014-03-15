RedditClone::Application.routes.draw do
  get "root/root"

  namespace :user do 
    resources :users, :only => [:create, :show]
  end

  namespace :r do
    resources :subs, :only => [:index, :create, :show]
  end

  resource :session, :only => [:create, :destroy, :show]
  root :to => "root#root"
end
