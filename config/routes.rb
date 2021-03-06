Rails.application.routes.draw do
  root to: 'events#index'
  get 'static_pages/secret'
  devise_for :users
  resources :events do
    resources :attendances, only: [:new, :create, :index, :destroy]
  end
  resources :users do
    resources :avatars, only: [:new, :create]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
