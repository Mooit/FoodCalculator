Rails.application.routes.draw do
  get 'food_calc/index'
  
  resources :recipes do
    resources :ingredients
  end
    
  resources :ingredients

    
  
  root 'food_calc#index'

  match ':controller(/:action(/:id))', :via => :get
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
