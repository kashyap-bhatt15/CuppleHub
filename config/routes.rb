CuppleHub::Application.routes.draw do

  get "front/index"

  get "modal/index"

  resources :outings
  match "/questions", to: 'home#show', as: 'questions'

  devise_for :couples
  resources :couples do
    resources :user_likes
  end

  root to: 'home#index'
end
