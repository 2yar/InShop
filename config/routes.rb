Rails.application.routes.draw do
  resources :orders
  root to: 'products#index'
  resources :products
  devise_for :users, path_names: { sign_in: 'login', sign_out: 'logout' },
                     controllers: { registrations: "user/registrations" }
end
