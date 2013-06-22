CuppleHub::Application.routes.draw do

  get "front/index"

  get "modal/index"

  resources :outings

  devise_for :couples

  root to: 'home#index'
end
