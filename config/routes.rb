Rails.application.routes.draw do

  get 'welcome/about'
  root 'lists#index'

  namespace :api, defaults: { format: :json } do
    resources :users do
      resources :lists
    end

    resources :lists, only: [] do
      resources :items, only: [:create]
    end

    resources :items
  end
end
