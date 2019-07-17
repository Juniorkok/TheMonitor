Rails.application.routes.draw do
  resources :categories
  get 'home/index'
  
  resources :articles do
    resources :comments
  end

  get '/admin/articles' => 'articles#index_admin'
  root 'home#index'
end