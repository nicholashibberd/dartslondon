Rails.application.routes.draw do
  devise_for :users
  resources :regions

  root to: 'pages#home'
  resources :users, only: :index do
    collection {post :approve}
  end
  resources :pubs
end
