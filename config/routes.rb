Rails.application.routes.draw do
  get 'food_calc/index'
  
  resources :ingredients
  
  resources :recipes
  
  root 'food_calc#index'

  match ':controller(/:action(/:id))', :via => :get
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
