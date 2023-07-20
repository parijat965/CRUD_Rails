Rails.application.routes.draw do
  #get 'products/index'
  #get 'products/show'
  #get 'products/edit'
  #get 'products/new'

  root 'products#index'
  resources :products do
    resources :comments
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
