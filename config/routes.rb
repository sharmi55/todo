Rails.application.routes.draw do

#  get 'welcome/about'
#  root 'lists#index'


  resources :lists do
    resources :items
  end

  namespace :api, defaults: { format: :json } do
    resources :users
  end
end
