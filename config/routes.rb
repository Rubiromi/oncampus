Rails.application.routes.draw do

  root 'pages#home'

  get '/about' => 'pages#about'

  devise_for :users
  namespace :admin do
    resources :courses
  end
  resources :courses, only: [:index, :show]



end
