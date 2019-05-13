Rails.application.routes.draw do
  namespace :api do
    resources :users, except: [:new, :edit, :update, :destroy] do
      resources :homes, except: [:new, :edit, :update]
    end
  end
end
