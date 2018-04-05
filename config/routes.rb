Rails.application.routes.draw do
  resources :doses, only: [:new, :create, :destroy]
  resources :cocktails
  resources :ingredients
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
