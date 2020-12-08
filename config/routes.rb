Rails.application.routes.draw do
  resources :projects
  resources :teams
  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'sign-up'}, controllers: { registrations: "user_registrations" }
  resources :users

  get 'infos', to: "infos#show"
  post 'infos', to: "infos#update"
  get 'infos/edit', to: 'infos#edit'
  patch 'infos', to: "infos#update"
  put 'infos', to: "infos#update"
  delete 'infos', to: "infos#destroy"

  # post '#contact-form-submitted', to: "static_pages#contact_form_submitted"
  post 'thank-you', to: 'static_pages#contact_form_submitted'
  get "about", to: 'static_pages#about'
  root "static_pages#index"

end
