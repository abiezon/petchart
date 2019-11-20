Rails.application.routes.draw do
  root 'pets#index'

  resources :charts
  resources :pets
  resources :owners
  resources :kinds
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get 'charts/:pet_id/show_charts', to: 'charts#show_charts'
end
