Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :jamsessions do
    resources :requests, only: [:new, :create, :delete, :index] do
      member do
        put :accept
        put :decline
      end
      
    end
    resources :posts, only: [:index, :create, :destroy, :new]
  end
  resources :instruments
  resources :reviews, only: [:index, :new, :create]
  

end
