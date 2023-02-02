Rails.application.routes.draw do
  root to: "pages#home"
  devise_for :users
  resources :stores, shallow: true do
    resources :cocktails
  end
  get 'profile', to: 'profiles#show'

end
