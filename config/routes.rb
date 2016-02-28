SampleApp::Application.routes.draw do
  resources :users do
    member do
      get :following, :followers
    end
  end
  resources :customers do
    member do
      get 'travel_plans'
    end
  end
  resources :travel_plans do
    member do
      get 'map'
      get 'traffic'
      get 'discover'
    end
  end
  resources :customers
  resources :travel_plans
  resources :sessions,      only: [:new, :create, :destroy]
  resources :microposts # ,    only: [:create, :destroy]
  resources :relationships, only: [:create, :destroy]
  root to: 'static_pages#home'
  match '/start',   to: 'static_pages#start',   via: 'get'
  match '/signup',  to: 'users#new',            via: 'get'
  match '/signin',  to: 'sessions#new',         via: 'get'
  match '/signout', to: 'sessions#destroy',     via: 'delete'
  match '/help',    to: 'static_pages#help',    via: 'get'
  match '/about',   to: 'static_pages#about',   via: 'get'
  match '/contact', to: 'static_pages#contact', via: 'get'
end
