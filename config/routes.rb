CuppleHub::Application.routes.draw do
  devise_for :couples

  root to: 'home#index'
end
