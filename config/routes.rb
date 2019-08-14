Rails.application.routes.draw do
  resources :user_poems
  resources :poem_tags
  resources :tags
    get '/tagpoems/:tag_id', to: 'tags#show_poems'
  resources :favorites
  resources :poems
  namespace :api do
    namespace :v1 do
    resources :users
    post '/login', to: 'auth#create'
    get '/current_user', to: 'auth#show'
    get '/profile', to: 'users#profile'
    get 'users/:id/favorites', to: 'users#favorites'
  end
end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
