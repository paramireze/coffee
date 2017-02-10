Rails.application.routes.draw do

  # specific to welcome
  get 'welcome/home'
  get 'welcome/about'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'welcome#home'
end
