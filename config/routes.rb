Rails.application.routes.draw do

  devise_for :users
  resources :users, only: [:show, :edit, :update]

  get 'bookers/top' => 'bookers#top'
  get 'bookers/about' => 'bookers#about'

  resources :bookers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/users' => 'users#user'

  root 'bookers#top'

end
