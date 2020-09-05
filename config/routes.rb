Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:show]
  root to: 'pages#home'
  match 'users' => 'users#show', via: :get

  resources :jamsessions do
    resources :requests, only: [:new, :create, :delete, :index] do
      member do
        put :accept
        put :decline
      end
    end
    resources :posts, only: [:index, :create, :destroy, :new]
  end
  resources :instruments do
    resources :userinstruments, only: [:index, :create, :edit, :update, :new]
  end
  resources :reviews, only: [:index, :new, :create]
  
end

