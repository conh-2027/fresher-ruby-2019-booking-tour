Rails.application.routes.draw do
  root to: "homes#index"
  devise_for :users, controllers: {omniauth_callbacks: "users/omniauth_callbacks"}
  
  namespace :admin do
    get "/dasboard", to: "base#index"
  end
end
