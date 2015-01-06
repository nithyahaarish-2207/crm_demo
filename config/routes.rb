CrmDemo::Application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  root "menu_items#index"
  resources :orders
  resources :menu_items
end
