Rails.application.routes.draw do
  namespace :api do
    resources :users, except: [:new, :edit] do
      resources :homes, except: [:new, :edit]
    end
  end
end
