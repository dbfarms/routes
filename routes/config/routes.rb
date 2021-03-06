Rails.application.routes.draw do
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  
  resources :maps do 
    resources :routes, except: [:delete] #, only: [:show, :index]
  end 
  
  get 'maps', to: 'maps#index'
  #get 'maps/new', to: 'maps#new'
  
  resources :landmarks
  #resources :routes 

  devise_scope :user do
    get 'login', to: 'devise/sessions#new'
  end
  
  root 'welcome#home'
  
end
