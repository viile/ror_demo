Rails.application.routes.draw do
  get 'static_pages/home'
  get 'static_pages/help'
  get 'static_pages/about'

  resources :microposts
  resources :users
  resources :people
  resources :events

  # root :to => "welcome#wtf"
  root :to => "static_pages#home"
end
