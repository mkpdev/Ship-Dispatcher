Rails.application.routes.draw do
  root 'ships#index'
  devise_for :users

  resources :ships
end
