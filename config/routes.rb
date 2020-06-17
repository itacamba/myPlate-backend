Rails.application.routes.draw do
  resources :dishes
  get '/chef-dishes/:user_id', to: 'dishes#chef_dishes'
  resources :users
  get '/decode-token', to: 'users#decode_token'
  post '/login', to: 'users#authenticate'
  get '/chefs', to: 'users#chefs_index'
  get '/user-events/:user_id', to: 'users#user_events'
  get '/chef-events/:id', to: 'users#chef_events'
  resources :events
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
