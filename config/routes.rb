Rails.application.routes.draw do
  root to: "pages#home"
  devise_for :users
  resources :stores, shallow: true do
    resources :cocktails, except: [:index]
  end
  resources :cocktails, only: [:index]
  get 'profile', to: 'profiles#show'

end
