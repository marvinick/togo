Rails.application.routes.draw do
  devise_for :users, path_names: {sign_in: "login", sign_out: "logout"}
  resources :foods
  resources :categories

  root to: "pages#home"
end
