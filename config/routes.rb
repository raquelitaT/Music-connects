Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'pages#home'
  resources :jamsessions do
    resources :posts, only: [:index, :create, :destroy, :new] do
      member do
        put :accept
        put :decline
      end
    end
  end
  resources :instruments
  resources :reviews, only: [:index, :new, :create]

end
