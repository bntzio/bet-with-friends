Rails.application.routes.draw do
  
  devise_for :users
  get 'welcome/index'
  get 'welcome/about'
  get 'welcome/faq'
  get 'welcome/legal'

  root to: 'welcome#index'
end
