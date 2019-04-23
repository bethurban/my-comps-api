Rails.application.routes.draw do
  namespace :api do
    resources :searches, except: [:new, :edit]
  end
end
