Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:show]
  root to: 'pages#home'
  # get "/pages/:page" => "pages#show"
  # root "pages#show", page: "home"

  match '/account' => 'users#account', via: :get

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
    # resources :userinstruments, only: [:index, :create, :edit, :update, :new]
  end
  resources :jam_session_instruments, only: [:new]
  resources :user_instruments, only: [:new]
end

