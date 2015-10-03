Rails.application.routes.draw do
  
  get 'welcome/index'
  get 'welcome/about'
  get 'welcome/faq'
  get 'welcome/legal'

  root to: 'welcome#index'
end
