Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :orders
  resources :profiles
  resources :credit_cards
  resources :addresses
  get 'posts/index'
  devise_for :users
  resources :pokedexes
  root 'home#index'
  get '*a', :to => 'errors#routing'
 
    # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
