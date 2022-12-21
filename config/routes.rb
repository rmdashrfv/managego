Rails.application.routes.draw do

  get 'apartments/evict'
  get 'tenants/:id', to: 'tenants#show'
  # get 'tenants', to: 'tenants#index' # view only our tenants later
  post 'tenants', to: 'tenants#create'
  patch 'tenants/:id/update', to: 'tenants#update'
  delete 'tenants/:id/delete', to: 'tenants#destroy'
  patch 'apartments/:id/evict', to: 'apartments#evict'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
