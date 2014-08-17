Rails.application.routes.draw do
  resources :regions

  root to: 'pages#home'
  resources :pubs
end
