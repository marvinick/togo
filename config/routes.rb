Rails.application.routes.draw do
  resources :foods
  resources :categories

  root to: "pages#home"
end
