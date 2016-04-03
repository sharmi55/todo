Rails.application.routes.draw do

  get 'welcome/about'

  root 'lists#index'

    resources :items
#    resources :users
    resources :lists

    namespace :api, defaults: { format: :json } do
#      namespace :v1 do
        resources :users
#        resources :lists, only: [:index, :show]
      end
#    end
end
