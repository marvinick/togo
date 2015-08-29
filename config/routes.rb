Rails.application.routes.draw do

  root to: "pages#home"

  devise_for :users, path_names: {sign_in: "login", sign_out: "logout"}, controllers: { registrations: "registrations"}

  resources :foods
  resources :categories
  resources :locations

  get 'dashboard', to: "pages#dashboard"

  devise_scope :user do
    authenticated :user do
      root 'foods#index', as: :authenticated_root
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
