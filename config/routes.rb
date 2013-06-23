CuppleHub::Application.routes.draw do


  match "/welcome", to: 'home#splash', as: 'welcome'
  match "/profile", to: 'home#profile', as: 'profile'
  get "front/index"
  get 'home/get_couple'
  get "modal/index"
  get "home/modal1"

  resources :outings
  match "/questions", to: 'home#show', as: 'questions'

  devise_for :couples
  resources :couples do
    resources :user_likes
  end

  root to: 'home#splash'
end
