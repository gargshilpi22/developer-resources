CourseProject::Application.routes.draw do
  resources :posts, :only => [:create, :index, :new, :show] do
  	resources :comments, :only => [:create, :index, :show]
  	resources :votes, :only => [:create, :index]
  end

  resources :users, :only => [:new, :create, :show]
  resources :sessions, :only => [:new, :create]

  root :to => "posts#index"
  
  get 'signup', :to => 'users#new', :as => 'signup'
  get 'login', :to => 'sessions#new', :as => 'login'
  get 'logout', :to => 'sessions#destroy', :as => 'logout'

end