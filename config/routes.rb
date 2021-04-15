Rails.application.routes.draw do
  get 'home/top'
  get 'home/about'
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
  root to: 'home#top'
  resources :users
  resources :books
  get "home/about"

end