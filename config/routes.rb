Rails.application.routes.draw do
  resources :services
  resources :affectations
  resources :creneaus
  resources :cabinets
  resources :lieus
  get 'praticiens/index'
  get 'praticiens/import'
  get 'sessions/new'
  resources :users
  get 'welcome/index'

  resources :praticiens do
    collection { post :import }
  end
  root to: "praticiens#index"
  
  resources :sessions
  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'

  root to: 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
