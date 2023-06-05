Rails.application.routes.draw do
  resources :products
  resources :sup_sub_categories
  resources :sub_categories
  resources :categories
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "products#index"
end
