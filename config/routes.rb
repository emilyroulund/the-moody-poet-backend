Rails.application.routes.draw do
  resources :user_poems
  resources :poem_tags
  resources :tags
  resources :favorites
  resources :poems
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
