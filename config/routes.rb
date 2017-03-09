Rails.application.routes.draw do

  resources :item_types
  resources :stores
  get 'purchase/index'
  get 'purchase/show'
  get 'purchase/edit'

  get  'admin', :to => 'access#menu'
  get  'access/menu'
  get  'access/login'
  post 'access/attempt_login'
  get  'access/logout'

  resources :users do
    member do
      get :delete
    end
  end

  resources :items
  # specific to welcome
  get 'welcome/home'
  get 'welcome/about'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'welcome#home'

  resources :items do
    member do
      get :delete
    end
  end

  resources :purchases do
    member do
      get :delete
    end
  end

end
