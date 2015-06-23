Rails.application.routes.draw do
  devise_for :users

  root to: 'pages#home'

  resources :users, only: :index do
    collection {post :approve}
  end
  resources :pubs, only: [:show, :index]
  resources :regions, only: [:show, :index]

  get 'admin', to: 'admin#index'
  scope :admin do
    resources :pubs, except: [:show, :index] do
      get :index, on: :collection, action: 'admin_index'
    end
    resources :regions, except: [:show, :index] do
      get :index, on: :collection, action: 'admin_index'
    end
  end
end
