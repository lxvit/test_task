TestTask::Application.routes.draw do
  
  resources :users, only: [:new, :create]
  resources :surveys, only: [:create]
  resources :prizes, only: [:new]
  root :to => "users#new"

end
