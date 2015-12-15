Rails.application.routes.draw do
  root to: 'static#index'
  namespace :api,
    defaults: {
      format: :json
    } do

    resources :users
    resources :lists
    resources :items
  end
end
