Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
  root to: 'homes#top'
  resources :users, :only => [:index, :show, :edit, :update,]
  resources :books
  get "homes/about"

end
