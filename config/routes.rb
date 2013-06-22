CuppleHub::Application.routes.draw do
  resources :outings
  match "/questions", to: 'home#show', as: 'questions'

  devise_for :couples
  resources :couples do
    resources :user_likes
  end

  root to: 'home#index'
end
