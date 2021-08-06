Rails.application.routes.draw do
  root 'ships#index'
  devise_for :users

  resources :ships do
    member do
      get :send_to_queue
      get :processing
    end
  end
end
