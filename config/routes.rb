Rails.application.routes.draw do
  root 'pages#home'

  get  'pages/home'

  # get  'inventory' => 'inventories#show'
  #
  # post 'inventories' => 'inventories#create'
  #
  # patch 'inventory', :as => 'inventories#update'

  resources :inventories
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
