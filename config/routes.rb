Rails.application.routes.draw do
  resources :dishes
  resources :users, only: [:show]
  get '/chefs', to: 'users#chefs_index'
  get '/user-events/:user_id', to: 'users#user_events'
  get '/chef-events/:id', to: 'users#chef_events'
  resources :events, only: [:index, :create, :show, :update]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
