Rails.application.routes.draw do
  devise_for :users
  resources :regions

  root to: 'pages#home'
  resources :pubs
end
