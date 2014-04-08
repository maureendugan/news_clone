NewsClone::Application.routes.draw do
  resources :links
  resources :users
  resources :votes
  resources :comments
end
