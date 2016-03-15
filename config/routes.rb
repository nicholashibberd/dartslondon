Rails.application.routes.draw do
  devise_for :users

  root to: 'pages#home'

  resources :users, only: :index do
    collection {post :approve}
  end
  resources :pubs, except: [:edit, :new]
  resources :regions, except: [:edit, :new]

  get 'admin', to: 'admin#index'
  scope :admin do
    resources :pubs, only: [:edit, :new] do
      get :index, on: :collection, action: 'admin_index', as: 'admin_index'
    end
    resources :regions, only: [:edit, :new] do
      get :index, on: :collection, action: 'admin_index', as: 'admin_index'
    end
  end

  get 'sitemap.xml', to: 'sitemaps#index', defaults: { format: 'xml' }
end
