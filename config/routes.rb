Rails.application.routes.draw do
  
  devise_for :users
  
  get 'betting/index'
  get 'betting/match_info'
  get 'welcome/index'
  get 'welcome/about'
  get 'welcome/faq'
  get 'welcome/legal'

  root to: 'welcome#index'
end
