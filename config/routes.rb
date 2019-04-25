Rails.application.routes.draw do
  namespace :api do
    resources :homes, except: [:new, :edit]
  end
end
