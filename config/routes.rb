Rails.application.routes.draw do
  resources :articles
  devise_for :app_users, controllers: {
    sessions: 'app_users/sessions',
    passwords: 'app_users/passwords',
    registrations: 'app_users/registrations',
    confirmations: 'app_users/confirmations',
    unlocks: 'app_users/unlocks',
    mailer: 'app_users/mailer',
  }
  resources :users
  root 'welcome#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
