Rails.application.routes.draw do
  resources :locations

  devise_for :users, path_names: {sign_in: "login", sign_out: "logout"}, controllers: { registrations: "registrations"}
  resources :foods
  resources :categories

  devise_scope :user do
    authenticated :user do
      root 'pages#home', as: :authenticated_root
    end

    unauthenticated do
      root 'devise/sessions#new', as: :unauthenticated_root
    end
  end
end
