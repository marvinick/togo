Rails.application.routes.draw do

  # root to: 'application#angular'
  root to: "pages#home"

  #users
  devise_for :users, path_names: {sign_in: "login", sign_out: "logout"}, controllers: { registrations: "registrations"}
  match '/users/:id', :to => 'users#show', :as => :user,  :via => :get #display specific user show page

  #foods
  resources :foods do
    collection do
      get :autocomplete
    end
  end

  resources :foods do
    resources :reviews, only: [:create]
  end

  resources :categories
  resources :locations

  get 'dashboard', to: "pages#dashboard"

  devise_scope :user do
    authenticated :user do
      root 'pages#dashboard', as: :authenticated_root
    end

    unauthenticated do
      root 'devise/sessions#new', as: :unauthenticated_root
    end
  end

  get "mailbox/inbox" => "mailbox#inbox", as: :mailbox_inbox
  get "mailbox/sent" => "mailbox#sent", as: :mailbox_sent
  get "mailbox/trash" => "mailbox#trash", as: :mailbox_trash

  # conversations
  resources :conversations do
    member do
      post :reply
      post :trash
      post :untrash
    end
  end
end
