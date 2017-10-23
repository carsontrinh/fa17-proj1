Rails.application.routes.draw do
  devise_for :trainers
  root to: "home#index"
  resources :trainers
  resources :pokemons # -- what's this for

  get 'new', to: 'pokemons#new', as: 'new' # What's this for, do I even need it"
  post 'create', to: 'pokemons#create', as: 'create'
  patch 'capture', to: 'pokemons#capture', as: 'capture'
  patch 'damage', to: 'pokemons#damage', as: 'damage'

end
