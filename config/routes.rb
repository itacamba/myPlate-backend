Rails.application.routes.draw do
  resources :dishes
  resources :users, only: [:show]
  get '/chefs', to: 'users#chefs_index'
  resources :events, only: [:index, :create, :show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
