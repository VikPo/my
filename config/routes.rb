Rails.application.routes.draw do
  resources :photos
  devise_for :users
  root 'pages#index'
  get 'pages/about'
  get 'profiles/my_photos'
  get 'profiles/subscribes_list'
  get 'profiles/friends_photos'
  get '/profiles/:id' => 'profiles#show', as: "profile"
  get '/profiles/:id/subscribe' => 'profiles#subscribe', as: 'subscribe_profile'
  get '/profiles/:id/unsubscribe' => 'profiles#unsubscribe', as: 'unsubscribe_profile'


end
