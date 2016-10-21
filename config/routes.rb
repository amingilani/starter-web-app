Rails.application.routes.draw do
  devise_for :users
  root 'public_pages#home'
end
