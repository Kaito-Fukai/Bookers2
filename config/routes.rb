Rails.application.routes.draw do

  devise_for :users
  get 'bookers/top' => 'bookers#top'

  resources :bookers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'bookers#top'


end
