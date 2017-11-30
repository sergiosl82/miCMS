Rails.application.routes.draw do
  devise_for :autors
  #get 'articulos/new'
  #get 'articulos/index'
  root "home#index"

  resources :articulos

  get 'estaticas/home'

  get 'estaticas/index'

  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
