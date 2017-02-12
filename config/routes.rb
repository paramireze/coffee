Rails.application.routes.draw do

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

end
