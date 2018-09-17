Rails.application.routes.draw do
  resources :forums
  root 'forums#index'
end
