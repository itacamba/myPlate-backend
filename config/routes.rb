Rails.application.routes.draw do
  resources :dishes
  resources :users, only: [:index, :show]
  get '/chefs', to: 'users#chefs_index'
  get '/customers', to: 'users#customers_index'
  resources :events
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
