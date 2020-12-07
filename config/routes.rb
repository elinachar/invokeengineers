Rails.application.routes.draw do
  # devise_for :users
  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'sign-up'}, controllers: { registrations: "user_registrations" }
  # , path: '', path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'sign-up'}
  resources :users
  # resources :infos
  get 'infos', to: "infos#show"
  post 'infos', to: "infos#update"
  get 'infos/edit', to: 'infos#edit'
  patch 'infos', to: "infos#update"
  put 'infos', to: "infos#update"
  delete 'infos', to: "infos#destroy"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "static_pages#index"
end
