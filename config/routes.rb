CourseProject::Application.routes.draw do
  root to: "main#index"
  resources :posts do
  	resources :comments
  end
end
