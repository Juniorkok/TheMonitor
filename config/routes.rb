Rails.application.routes.draw do
  devise_for :users
  get 'home/index'
  
  resources :articles do
    resources :comments
  end

  devise_scope :users do
    get 'sign_in', to: 'devise/sessions#new'
  end

  root 'home#index'
end