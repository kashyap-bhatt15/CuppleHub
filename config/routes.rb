CuppleHub::Application.routes.draw do
  get "front/index"

  get "modal/index"

  devise_for :couples

  root to: 'home#index'
end
