Rails.application.routes.draw do

  get 'bookers/top' => 'bookers#top'

  resources :bookers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html



end
