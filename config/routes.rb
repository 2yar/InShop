Rails.application.routes.draw do
  root to: 'index#index'
  devise_for :users, path_names: { sign_in: 'login', sign_out: 'logout' },
                     controllers: { registrations: "user/registrations" }
end
