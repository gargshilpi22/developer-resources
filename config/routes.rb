CourseProject::Application.routes.draw do
  resources :posts, :only => [:create, :index, :new, :show] do
  	resources :comments, :only => [:create, :index, :show]
  	resources :votes, :only => [:create, :index]
  end

  root :to => "posts#index"
  
end