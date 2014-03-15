RedditClone::Application.routes.draw do
  namespace :user do 
    resources :users, :only => [:create, :show]
  end

  namespace :r do
    resources :subs, :only => [:index, :create, :show]
  end

  resource :session, :only => [:create, :destroy, :show]
  root :to => "home#index"
end
