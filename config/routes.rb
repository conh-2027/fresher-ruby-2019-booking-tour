Rails.application.routes.draw do
  root to: "homes#index"
  devise_for :users, controllers: {omniauth_callbacks: "users/omniauth_callbacks", sessions: "users/sessions"}
  
  namespace :admin do
    get "/dashboard", to: "base#index"
    resources :tours
  end
end
