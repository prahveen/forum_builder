Rails.application.routes.draw do
  devise_for :users
  resources :forums
  root 'forums#index'
end
