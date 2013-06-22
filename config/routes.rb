CuppleHub::Application.routes.draw do
  resources :outings

  devise_for :couples

  root to: 'home#index'
end
