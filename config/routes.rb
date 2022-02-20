Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  root :to => "directors#index"
  resources :movies
  resources :actors
  resources :roles
  resources :directors
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
