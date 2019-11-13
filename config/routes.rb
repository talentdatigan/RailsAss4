Rails.application.routes.draw do
  resources :credit_cards
  resources :addresses
  resources :customers
  get 'map/index'
  get 'errors/routing'
  resources :pokedexes
  root 'home#index'
  get '*a', :to => 'errors#routing'
    # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
