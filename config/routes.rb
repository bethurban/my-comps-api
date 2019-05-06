Rails.application.routes.draw do
  namespace :api do
    resources :homes, except: [:new, :edit]
    resources :users, except: [:new, :edit]
  end
end
