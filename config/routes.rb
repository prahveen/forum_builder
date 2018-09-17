Rails.application.routes.draw do
  devise_for :users
  resources :forums do
    resources :comments
  end
  root 'forums#index'
end
