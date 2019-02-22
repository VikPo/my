Rails.application.routes.draw do
  resources :photos
  devise_for :users
  root 'pages#index'
  get 'pages/about'
  get '/profiles/:id' => 'profiles#show', as: "profile"
end
