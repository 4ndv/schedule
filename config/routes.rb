Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'institutes#index'

  resources :institutes
  resources :groups
  resources :items
  resources :lessons
  resources :teachers
end
