Rails.application.routes.draw do
  root to: "homes#index"
  devise_for :users
  namespace :admin do
    get "/dasboard", to: "base#index"
  end
end
