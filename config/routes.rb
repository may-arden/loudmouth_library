Rails.application.routes.draw do
  root 'categories#index'
  
  resources :categories do 
    resources :artifacts, only: [:index]
  end 
    
  resources :artifacts, only: [:create, :show]
  
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
